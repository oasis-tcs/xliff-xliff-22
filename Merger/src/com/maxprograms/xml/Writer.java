package com.maxprograms.xml;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;

import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Writer {

    private Document doc;
    private OutputStream out;

    public Writer(Document doc, OutputStream out) {
        this.doc = doc;
        this.out = out;
    }

    public void write() throws IOException {
        writeString("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n");
        DocumentType doctype = doc.getDoctype();
        if (doctype != null) {
            StringBuffer sb = new StringBuffer();
            sb.append("<!DOCTYPE ");
            sb.append(doc.getDocumentElement().getTagName());
            String publicId = doctype.getPublicId();
            String systemId = doctype.getSystemId();
            if (publicId != null) {
                sb.append(" PUBLIC \"");
                sb.append(publicId);
                sb.append("\"");
                if (systemId != null) {
                    sb.append(" \"");
                    sb.append(systemId);
                    sb.append("\"");
                }
            }
            sb.append(">\n");
            writeString(sb.toString());
        }
        writeElement(doc.getDocumentElement());
    }

    private void writeString(String string) throws IOException {
        out.write(string.getBytes(StandardCharsets.UTF_8));
    }

    private void writeElement(Element e) throws IOException {
        writeString("<");
        writeString(e.getTagName());
        NamedNodeMap attributes = e.getAttributes();
        for (int i = 0; i < attributes.getLength(); i++) {
            Node att = attributes.item(i);
            if ("xmlns:xi".equals(att.getNodeName())) {
                continue;
            }
            writeString(" ");
            writeString(att.getNodeName());
            writeString("=\"");
            writeString(replaceQuotes(cleanString(att.getNodeValue())));
            writeString("\"");
        }
        NodeList content = e.getChildNodes();
        if (content.getLength() == 0) {
            writeString("/>");
            return;
        }
        writeString(">");
        for (int i = 0; i < content.getLength(); i++) {
            Node node = content.item(i);
            if (node.getNodeType() == Node.ELEMENT_NODE) {
                writeElement((Element) node);
            }
            if (node.getNodeType() == Node.TEXT_NODE) {
                writeString(cleanString(node.getNodeValue()));
            }
        }
        writeString("</");
        writeString(e.getTagName());
        writeString(">");
    }

    private String cleanString(String string) {
        String result = string.replace("&", "&amp;");
        result = result.replace("<", "&lt;");
        result = result.replace("]]>","]]&gt;");
        return result;
    }

    private String replaceQuotes(String string) {
        return string.replace("\"", "&quot;");
    }
}
