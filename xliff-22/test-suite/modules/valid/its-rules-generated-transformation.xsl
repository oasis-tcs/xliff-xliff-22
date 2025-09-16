<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml"
                xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                xmlns:xlf="urn:oasis:names:tc:xliff:document:2.2"
                xmlns:mtc="urn:oasis:names:tc:xliff:matches:2.0"
                xmlns:ctr="urn:oasis:names:tc:xliff:changetracking:2.1"
                xmlns:res="urn:oasis:names:tc:xliff:resourcedata:2.0"
                xmlns:its="http://www.w3.org/2005/11/its"
                xmlns:itsm="urn:oasis:names:tc:xliff:itsm:2.1"
                version="2.0"
                exclude-result-prefixes="sch xlf mtc ctr res its itsm">
   <xsl:output indent="yes" method="xml"/>
   <xsl:template match="* | @*" mode="get-full-path">
      <xsl:apply-templates select="parent::*" mode="get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:if test="count(. | ../@*) = count(../@*)">@</xsl:if>
      <xsl:value-of select="name()"/>
      <xsl:if test="self::element() and parent::element()">
         <xsl:text>[</xsl:text>
         <xsl:number/>
         <xsl:text>]</xsl:text>
      </xsl:if>
   </xsl:template>
   <xsl:template match="text()" mode="get-full-path"/>
   <xsl:template match="/">
      <html>
         <head>
            <title>ITS Rule Testing</title>
         </head>
         <body>
            <h1>ITS Rule Testing</h1>
            <p>The folllowing rules have matched for the input file.</p>

            <h2 id="xpaths-for-domainRule-no-1">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-domainRule-no-1</h2>
            <p>Selector attribute: //xlf:*[@itsm:domains]</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:*[@itsm:domains]">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-domainRule-no-1" select="//xlf:*[@itsm:domains]">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: @itsm:domains<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="@itsm:domains"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-1">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-1</h2>
            <p>Selector attribute: //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source | //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:file/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source | //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-1"
                                select="//xlf:file/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source | //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:file/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-2">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-2</h2>
            <p>Selector attribute: //xlf:group/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source | //xlf:group/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:group/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source | //xlf:group/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-2"
                                select="//xlf:group/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source | //xlf:group/xlf:notes/xlf:note[not(@appliesTo)][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:group/xlf:notes/xlf:note[not(@appliesTo) and not(@priority) or @priority=1]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:group/xlf:notes/xlf:note[not(@appliesTo) and not(@priority) or @priority=1]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-3">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-3</h2>
            <p>Selector attribute: //xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-3"
                                select="//xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-4">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-4</h2>
            <p>Selector attribute: //xlf:file/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:file/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-4"
                                select="//xlf:file/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:file/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:file/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-5">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-5</h2>
            <p>Selector attribute: //xlf:group/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:group/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-5"
                                select="//xlf:group/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:group/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:group/xlf:notes/xlf:note[@appliesTo='target'][not(@priority) or @priority=1]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-6">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-6</h2>
            <p>Selector attribute: //xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-6"
                                select="//xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-7">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-7</h2>
            <p>Selector attribute: //xlf:file/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:file/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-7"
                                select="//xlf:file/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:file/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:file/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-8">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-8</h2>
            <p>Selector attribute: //xlf:group/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:group/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-8"
                                select="//xlf:group/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]/../..//xlf:segment/xlf:source">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:group/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:group/xlf:notes/xlf:note[@appliesTo='source'][not(@priority) or @priority=1]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-9">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-9</h2>
            <p>Selector attribute: //xlf:*[@type='comment' and @value]</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:*[@type='comment' and @value]">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-9"
                                select="//xlf:*[@type='comment' and @value]">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: @value<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="@value"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-10">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-10</h2>
            <p>Selector attribute: //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source | //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:file/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source | //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-10"
                                select="//xlf:file/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source | //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:file/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:file/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-11">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-11</h2>
            <p>Selector attribute: //xlf:group/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source | //xlf:group/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:group/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source | //xlf:group/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-11"
                                select="//xlf:group/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source | //xlf:group/xlf:notes/xlf:note[not(@appliesTo)][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:group/xlf:notes/xlf:note[not(@appliesTo) and not(@priority) or @priority=1]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:group/xlf:notes/xlf:note[not(@appliesTo) and not(@priority) or @priority=1]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-12">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-12</h2>
            <p>Selector attribute: //xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-12"
                                select="//xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:unit/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-13">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-13</h2>
            <p>Selector attribute: //xlf:file/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:file/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-13"
                                select="//xlf:file/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:file/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:file/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-14">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-14</h2>
            <p>Selector attribute: //xlf:group/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:group/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-14"
                                select="//xlf:group/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:group/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:group/xlf:notes/xlf:note[@appliesTo='target'][@priority&gt;1 and @priority&lt;=10]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-15">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-15</h2>
            <p>Selector attribute: //xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-15"
                                select="//xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:unit/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-16">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-16</h2>
            <p>Selector attribute: //xlf:file/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:file/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-16"
                                select="//xlf:file/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:file/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:file/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-locNoteRule-no-17">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-locNoteRule-no-17</h2>
            <p>Selector attribute: //xlf:group/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:group/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-locNoteRule-no-17"
                                select="//xlf:group/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]/../..//xlf:segment/xlf:source">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: //xlf:group/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]<br/>Position in input document: <xsl:apply-templates mode="get-full-path"
                                                   select="//xlf:group/xlf:notes/xlf:note[@appliesTo='source'][@priority&gt;1 and @priority&lt;=10]"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-translateRule-no-1">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-translateRule-no-1</h2>
            <p>Selector attribute: //xlf:*[@translate='no']</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:*[@translate='no']">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-translateRule-no-1"
                                select="//xlf:*[@translate='no']">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul/>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-translateRule-no-2">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-translateRule-no-2</h2>
            <p>Selector attribute: //xlf:*[@translate='yes']</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:*[@translate='yes']">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-translateRule-no-2"
                                select="//xlf:*[@translate='yes']">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul/>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-externalResourceRefRule-no-1">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-externalResourceRefRule-no-1</h2>
            <p>Selector attribute: //res:source | //res:target</p>
            <p>Matches:</p>
            <xsl:if test="//res:source | //res:target">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-externalResourceRefRule-no-1"
                                select="//res:source | //res:target">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: @href<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="@href"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-langRule-no-1">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-langRule-no-1</h2>
            <p>Selector attribute: //xlf:*[@xml:lang]</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:*[@xml:lang]">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-langRule-no-1" select="//xlf:*[@xml:lang]">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: @xml:lang<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="@xml:lang"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-langRule-no-2">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-langRule-no-2</h2>
            <p>Selector attribute: //xlf:*[@itsm:lang]</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:*[@itsm:lang]">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-langRule-no-2" select="//xlf:*[@itsm:lang]">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: @itsm:lang<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="@itsm:lang"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-langRule-no-3">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-langRule-no-3</h2>
            <p>Selector attribute: //xlf:source[not(@xml:lang)]</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:source[not(@xml:lang)]">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-langRule-no-3" select="//xlf:source[not(@xml:lang)]">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: ancestor::*/@srcLang<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="ancestor::*/@srcLang"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-langRule-no-4">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-langRule-no-4</h2>
            <p>Selector attribute: //xlf:target[not(@xml:lang)]</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:target[not(@xml:lang)]">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-langRule-no-4" select="//xlf:target[not(@xml:lang)]">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: ancestor::*/@trgLang<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="ancestor::*/@trgLang"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-termRule-no-1">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-termRule-no-1</h2>
            <p>Selector attribute: //xlf:*[@type='term' or @type='its:term-no']</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:*[@type='term' or @type='its:term-no']">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-termRule-no-1"
                                select="//xlf:*[@type='term' or @type='its:term-no']">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul/>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-termRule-no-2">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-termRule-no-2</h2>
            <p>Selector attribute: //xlf:*[@type='term' or @type='its:term-no'][@ref]</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:*[@type='term' or @type='its:term-no'][@ref]">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-termRule-no-2"
                                select="//xlf:*[@type='term' or @type='its:term-no'][@ref]">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: @ref<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="@ref"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-termRule-no-3">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-termRule-no-3</h2>
            <p>Selector attribute: //xlf:*[@type='term' or @type='its:term-no'][@value]</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:*[@type='term' or @type='its:term-no'][@value]">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-termRule-no-3"
                                select="//xlf:*[@type='term' or @type='its:term-no'][@value]">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: @value<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="@value"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>

            <h2 id="xpaths-for-targetPointerRule-no-1">
               <xsl:text>Checking for  rule: </xsl:text>xpaths-for-targetPointerRule-no-1</h2>
            <p>Selector attribute: //xlf:source</p>
            <p>Matches:</p>
            <xsl:if test="//xlf:source">
               <ol>
                  <xsl:for-each xml:id="xpaths-for-targetPointerRule-no-1" select="//xlf:source">
                     <li>Position in input document: <xsl:apply-templates mode="get-full-path"/>
                        <br/>Matches for pointer attributes:<ul>
                           <li>Pointer attribute value: ../xlf:target<br/>Position in input document: <xsl:apply-templates mode="get-full-path" select="../xlf:target"/>
                           </li>
                        </ul>
                     </li>
                  </xsl:for-each>
               </ol>
            </xsl:if>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
