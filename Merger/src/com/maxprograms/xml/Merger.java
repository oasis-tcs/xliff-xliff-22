package com.maxprograms.xml;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.System.Logger;
import java.lang.System.Logger.Level;
import java.net.URISyntaxException;
import java.util.Set;
import java.util.TreeSet;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class Merger {

    Logger logger = System.getLogger(Merger.class.getName());

    private File input;
    private File output;
    private Set<String> ids;
    private DocumentBuilderFactory builder;
    private CatalogParser resolver;

    public static void main(String[] args) {
        if (args.length != 2) {
            System.out.println("Usage:\n\t\tMerge input_file output_file\n\n");
            return;
        }
        Merger instance = new Merger(args[0], args[1]);
        try {
            instance.run();
        } catch (SAXException | IOException | ParserConfigurationException | URISyntaxException
                | TransformerException e) {
            e.printStackTrace();
        }
    }

    public Merger(String inputFile, String outputFile) {
        input = new File(inputFile);
        output = new File(outputFile);
        builder = DocumentBuilderFactory.newInstance();
        ids = new TreeSet<>();
    }

    public void run()
            throws SAXException, IOException, ParserConfigurationException, URISyntaxException, TransformerException {
        if (!input.exists()) {
            System.err.println("\"" + input.getAbsolutePath() + "\" not found.");
            return;
        }
        System.out.println("Input:  " + input.getAbsolutePath());
        System.out.println("Output: " + output.getAbsolutePath());

        DocumentBuilder db = builder.newDocumentBuilder();
        resolver = new CatalogParser(new File(input.getParentFile(), "docbook/catalog.xml"));
        db.setEntityResolver(resolver);
        Document document = db.parse(input);

        recurse(document, document.getDocumentElement(), input.getParentFile());
        harvestIds(document.getDocumentElement());
        replaceLinks(document, document.getDocumentElement());

        try (FileOutputStream out = new FileOutputStream(output)) {
            Writer writer = new Writer(document, out);
            writer.write();
        }
    }

    private void recurse(Document doc, Element element, File folder)
            throws SAXException, IOException, ParserConfigurationException {
        NodeList content = element.getChildNodes();
        int length = content.getLength();
        for (int i = 0; i < length; i++) {
            Node n = content.item(i);
            if (n.getNodeType() == Node.ELEMENT_NODE) {
                Element child = (Element) n;
                if ("xi:include".equals(child.getTagName())) {
                    NamedNodeMap attributes = child.getAttributes();
                    String href = attributes.getNamedItem("href").getNodeValue();
                    System.out.println(href);
                    Node include = parse(href, folder);
                    doc.adoptNode(include);
                    element.insertBefore(include, child);
                    element.removeChild(child);
                }
                recurse(doc, child, folder);
            }
        }
    }

    private void harvestIds(Element element) {
        String id = element.getAttribute("id");
        if (!id.isEmpty()) {
            ids.add(id);
        }
        NodeList content = element.getChildNodes();
        int length = content.getLength();
        for (int i = 0; i < length; i++) {
            Node n = content.item(i);
            if (n.getNodeType() == Node.ELEMENT_NODE) {
                harvestIds((Element) n);
            }
        }
    }

    private void replaceLinks(Document doc, Element element) {
        NodeList content = element.getChildNodes();
        int length = content.getLength();
        for (int i = 0; i < length; i++) {
            Node n = content.item(i);
            if (n.getNodeType() == Node.ELEMENT_NODE) {
                Element child = (Element) n;
                if ("olink".equals(child.getTagName())) {
                    String linkend = child.getAttribute("targetptr");
                    NodeList olinkContent = child.getChildNodes();
                    if (ids.contains(linkend)) {
                        Element link = doc.createElement("link");
                        link.setAttribute("linkend", linkend);
                        for (int j = 0; j < olinkContent.getLength(); j++) {
                            Node childNode = olinkContent.item(j);
                            if (childNode.getNodeType() == Node.TEXT_NODE) {
                                childNode.setTextContent(childNode.getTextContent().replace("\n", ""));
                            }
                            link.appendChild(childNode);
                        }
                        if (link.getTextContent().isBlank()) {
                            logger.log(Level.WARNING, "Empty link: " + toString(link) + "\nfrom: " + toString(child));
                        }
                        element.insertBefore(link, n);
                    } else {
                        Element remark = doc.createElement("remark");
                        for (int j = 0; j < olinkContent.getLength(); j++) {
                            Node childNode = olinkContent.item(j);
                            if (childNode.getNodeType() == Node.TEXT_NODE) {
                                childNode.setTextContent(childNode.getTextContent().replace("\n", ""));
                            }
                            remark.appendChild(childNode);
                        }
                        if (remark.getTextContent().isBlank()) {
                            logger.log(Level.WARNING, "Empty remark: " + toString(child));
                        }
                        element.insertBefore(remark, n);
                    }
                    element.removeChild(n);
                }
                replaceLinks(doc, child);
            }
        }
    }

    private Node parse(String inputFile, File folder) throws SAXException, IOException, ParserConfigurationException {
        File file = new File(folder, inputFile);
        DocumentBuilder db = builder.newDocumentBuilder();
        db.setEntityResolver(resolver);
        Document document = db.parse(file);
        recurse(document, document.getDocumentElement(), file.getParentFile());
        return document.getDocumentElement();
    }

    private String toString(Element e) {
        StringBuffer sb = new StringBuffer();
        sb.append("<");
        sb.append(e.getTagName());
        NamedNodeMap attributes = e.getAttributes();
        for (int i = 0; i < attributes.getLength(); i++) {
            Node att = attributes.item(i);
            if ("xmlns:xi".equals(att.getNodeName())) {
                continue;
            }
            sb.append(" ");
            sb.append(att.getNodeName());
            sb.append("=\"");
            sb.append(Writer.replaceQuotes(Writer.cleanString(att.getNodeValue())));
            sb.append("\"");
        }
        NodeList content = e.getChildNodes();
        if (content.getLength() == 0) {
            sb.append("/>");
            return sb.toString();
        }
        sb.append(">");
        for (int i = 0; i < content.getLength(); i++) {
            Node node = content.item(i);
            if (node.getNodeType() == Node.ELEMENT_NODE) {
                sb.append(toString((Element) node));
            }
            if (node.getNodeType() == Node.TEXT_NODE) {
                sb.append(Writer.cleanString(node.getNodeValue()));
            }
        }
        sb.append("</");
        sb.append(e.getTagName());
        sb.append(">");
        return sb.toString();
    }
}
