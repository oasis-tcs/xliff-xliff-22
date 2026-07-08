package com.maxprograms.xml;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.System.Logger;
import java.lang.System.Logger.Level;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class CatalogParser implements EntityResolver {

    private static final String ENTITY_EXPANSION_LIMIT_PROPERTY = "jdk.xml.entityExpansionLimit";
    private static final String ENTITY_EXPANSION_LIMIT_ATTRIBUTE = "http://www.oracle.com/xml/jaxp/properties/entityExpansionLimit";

    Logger logger = System.getLogger(CatalogParser.class.getName());

    Map<String, String> systemMap;
    Map<String, String> publicMap;
    File base;

    public CatalogParser(File catalog) throws ParserConfigurationException, SAXException, IOException {
        systemMap = new HashMap<>();
        publicMap = new HashMap<>();
        base = catalog.getParentFile();
        DocumentBuilderFactory builder = DocumentBuilderFactory.newInstance();
        configureEntityExpansionLimit(builder);
        DocumentBuilder db = builder.newDocumentBuilder();
        Document document = db.parse(catalog);
        Element root = document.getDocumentElement();
        NodeList nodes = root.getChildNodes();
        for (int i = 0; i < nodes.getLength(); i++) {
            Node node = nodes.item(i);
            if (node.getNodeType() == Node.ELEMENT_NODE) {
                Element e = (Element) node;
                String name = e.getNodeName();
                if ("system".equals(name)) {
                    String systemId = e.getAttribute("systemId");
                    String uri = e.getAttribute("uri");
                    systemMap.put(systemId, uri);
                }
                if ("public".equals(name)) {
                    String publicId = e.getAttribute("publicId");
                    String uri = e.getAttribute("uri");
                    publicMap.put(publicId, uri);
                }
            }
        }
    }

    private void configureEntityExpansionLimit(DocumentBuilderFactory factory) {
        try {
            factory.setAttribute(ENTITY_EXPANSION_LIMIT_ATTRIBUTE, "0");
        } catch (IllegalArgumentException e) {
            logger.log(Level.WARNING, "Unable to set parser entity expansion limit attribute", e);
        }
        try {
            System.setProperty(ENTITY_EXPANSION_LIMIT_PROPERTY, "0");
        } catch (SecurityException e) {
            logger.log(Level.WARNING, "Unable to set system entity expansion limit property", e);
        }
    }

    @Override
    public InputSource resolveEntity(String publicId, String systemId) throws SAXException, IOException {
        if (publicId != null) {
            String uri = publicMap.get(publicId);
            if (uri != null) {
                File file = new File(base, uri);
                if (file.exists()) {
                    return new InputSource(new FileInputStream(file));
                }
            }
        }
        if (systemId != null) {
            String uri = systemMap.get(systemId);
            if (uri != null) {
                File file = new File(base, uri);
                if (file.exists()) {
                    return new InputSource(new FileInputStream(file));
                }
            }
            File file = new File(systemId);
            if (file.exists()) {
                return new InputSource(new FileInputStream(file));
            }
            try {
                URI uriFile = new URI(systemId);
                file = new File(uriFile);
                if (file.exists()) {
                    return new InputSource(new FileInputStream(file));
                }
            } catch (URISyntaxException e) {
                e.printStackTrace();
            }

        }
        return null;
    }
}
