package com.maxprograms.xml;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URISyntaxException;

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

    private File input;
    private File output;
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

    private Node parse(String inputFile, File folder) throws SAXException, IOException, ParserConfigurationException {
        File file = new File(folder, inputFile);
        DocumentBuilder db = builder.newDocumentBuilder();
        db.setEntityResolver(resolver);
        Document document = db.parse(file);
        recurse(document, document.getDocumentElement(), file.getParentFile());
        return document.getDocumentElement();
    }
}
