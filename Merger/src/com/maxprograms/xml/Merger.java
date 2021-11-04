/*******************************************************************************
 * Copyright (c)  Maxprograms.
 *
 * This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 1.0
 * which accompanies this distribution, and is available at
 * https://www.eclipse.org/org/documents/epl-v10.html
 *
 * Contributors:
 *     Maxprograms - initial API and implementation
 *******************************************************************************/
package com.maxprograms.xml;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.net.URISyntaxException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
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

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(document);
        StreamResult result = new StreamResult(new StringWriter());
        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
        transformer.transform(source, result);

        try (FileOutputStream fop = new FileOutputStream(output)) {
            String xmlString = result.getWriter().toString();
            byte[] contentInBytes = xmlString.getBytes();
            fop.write(contentInBytes);
        }
    }

    private void recurse(Document doc, Node element, File folder) throws SAXException, IOException, ParserConfigurationException {
        NodeList content = element.getChildNodes();
        int length = content.getLength();
        for (int i = 0; i < length; i++) {
            Node node = content.item(i);
            if (node.getNodeType() == Node.ELEMENT_NODE) {
                if ("xi:include".equals(node.getNodeName())) {
                    NamedNodeMap attributes = node.getAttributes();
                    String href = attributes.getNamedItem("href").getNodeValue();
                    System.out.println(href);
                    Node include = parse(href, folder);
                    doc.adoptNode(include);
                    element.insertBefore(include, node);
                    element.removeChild(node);
                }
            }
            recurse(doc, node, folder);
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
