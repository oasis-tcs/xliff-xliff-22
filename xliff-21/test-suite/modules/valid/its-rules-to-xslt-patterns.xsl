<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:my="bla" exclude-result-prefixes="xs" version="2.0" xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:xlf="urn:oasis:names:tc:xliff:document:2.0" xmlns:mtc="urn:oasis:names:tc:xliff:matches:2.0" xmlns:ctr="urn:oasis:names:tc:xliff:changetracking:2.1" xmlns:res="urn:oasis:names:tc:xliff:resourcedata:2.0" xmlns:its="http://www.w3.org/2005/11/its" xmlns:itsm="urn:oasis:names:tc:xliff:itsm:2.1">
    <xsl:namespace-alias stylesheet-prefix="my" result-prefix="xsl" xmlns="http://www.w3.org/1999/xhtml" />
    <xsl:output indent="yes" />

    <xsl:template match="/">
        <my:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0" exclude-result-prefixes="sch xlf mtc ctr res its itsm" xmlns="http://www.w3.org/1999/xhtml">
            <my:output indent="yes" method="xml" />

            <my:template match="* | @*" mode="get-full-path">
                <my:apply-templates select="parent::*" mode="get-full-path" />
                <my:text>/</my:text>
                <my:if test="count(. | ../@*) = count(../@*)">@</my:if>
                <my:value-of select="name()" />
                <my:if test="self::element() and parent::element()">
                    <my:text>[</my:text>
                    <my:number />
                    <my:text>]</my:text>
                </my:if>
            </my:template>
            
            <my:template match="text()" mode="get-full-path"/>

            <my:template match="/">
                <html>
                    <head>
                        <title>ITS Rule Testing</title>
                    </head>
                    <body>
                        <h1>ITS Rule Testing</h1>
                        <p>The folllowing rules have matched for the input file.</p>
                        <xsl:text>&#xA;</xsl:text>
                        <xsl:for-each select="/sch:schema/its:rules[1]/*">
                            <xsl:apply-templates select="@selector">
                                <xsl:with-param name="number">
                                    <xsl:number level="single" />
                                </xsl:with-param>
                            </xsl:apply-templates>
                        </xsl:for-each>
                    </body>
                </html>
            </my:template>
        </my:stylesheet>
    </xsl:template>

    <xsl:template match="@selector" xmlns="http://www.w3.org/1999/xhtml">
        <xsl:param name="number" />
        <xsl:text>&#xA;</xsl:text>

        <h2 xmlns="http://www.w3.org/1999/xhtml" id="{concat('xpaths-for-', local-name(parent::*), '-no-', $number)}">
            <my:text>Checking for  rule: </my:text>
            <xsl:value-of select="concat('xpaths-for-', local-name(parent::*), '-no-', $number)" />
        </h2>
        <p>Selector attribute: <xsl:value-of select="." /></p>
        <p>Matches:</p>
        <my:if test="{.}">
        <ol>
            <my:for-each xml:id="{concat('xpaths-for-',local-name(parent::*),'-no-',$number)}" select="{.}">
                <li>Position in input document: <my:apply-templates mode="get-full-path" />
                    <br/>Matches for pointer attributes:<ul>
                    <xsl:apply-templates select="../@*[contains(name(), 'Pointer')]">
                        <xsl:with-param name="position" select="$number" />
                    </xsl:apply-templates>
                    </ul>
                </li>
            </my:for-each>
        </ol>
        </my:if>
        <xsl:text>&#xA;</xsl:text>
    </xsl:template>

    <xsl:template match="@*[contains(name(), 'Pointer')]" xmlns="http://www.w3.org/1999/xhtml">
        <xsl:param name="number" />
        <li>Pointer attribute value: <xsl:value-of select="." /><br/>Position in input document: <my:apply-templates mode="get-full-path" select="{.}" /></li>
    </xsl:template>

    <xsl:template match="@*" />

</xsl:stylesheet>
