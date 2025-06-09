\<

# OASIS Open Note Template Instructions


## General Template Instructions


**Template Instructions:** All template instructions are included within angle brackets and need to be deleted prior to publication. This includes these five pages.


**Square Brackets**: Nearly all text within square brackets needs to be updated or replaced, except for any reference tokens that also use square brackets. For formats that support it, this text will be highlighted in yellow to make it easier to see.


**Additional Versions**: The editors of the document **MUST** produce all additional desired or required formats (HTML, PDF, etc) before sending this for publication.


**Names, Organizations, and Emails**: Individuals or companies, past or present, may request that their name and/or affiliation and/or email address be not included in any of the acknowledgments and or leadership positions. 


## Formatting Instructions


**Paragraph Spacing**: There **SHOULD** be a single empty line between paragraphs. In some cases, editors may add additional spacing to improve readability and the cosmetic look of the section, especially around figures, tables, and charts.


**Quotes:** Straight "quotes" **SHOULD** be used, not “smart quotes” or curly quotes. This can be set as a persistent preference in most writing tools.


**Document Date**: At the top of the document on the first page is a date, this date **MUST** be the date that the document was approved. 


**Document Title and Subtitle:** The title of the document **SHOULD** be written in title case, meaning all words that have four or more letters **SHOULD** be capitalized.


**Headings**: While various editors and formats support up to 6 levels of nested headers it is generally advised to structure the document to minimize the number of nested sections. A best practice is to try and keep nesting to no greater than 3 levels of headings. All headings **SHOULD** be written in title case, meaning all words that have four or more letters **SHOULD** be capitalized. 


**Tables**: Text presented in tables **SHOULD** be no smaller in font size than the body copy text.


## Extra Items Instructions


All equations, listings, code snippets, figures (Fig. 1), tables (Table I), etc., need to be referenced in the text (preferably before their appearance).


**Mathematical Syntax and Equations:** Editors **SHOULD** consider using simple text (with the Markdown Blockquotes feature designated by the following angle bracket \>) or images to create mathematical representations. All equations, listings, code snippets, figures (Fig. 1), tables (Table 1), etc., need to be referenced in the text (preferably before their appearance). 


**Equations:** All equations **MUST** use the Markdown Blockquotes feature, **MUST** be numbered, **MAY** use a section number dot equation number (see example below) to track the equations within a particular section, and **SHOULD** be numbered consecutively where the number is in parentheses and appears after the formula. All symbols in the equation **SHOULD** be defined before the equation appears in the text. When referring to an equation or formula, use for example "Eq. 1.1".


> y2 \= x3 \+ ax \+ b (Eq. 1.1)


**Listings:** All algorithms and pseudo code **MUST** use the Markdown Fenced Code Blocks feature, **MUST** be numbered, **MAY** use a section number dot listing number (see example below) to track the listing within a particular section, **SHOULD** be numbered consecutively, and **SHOULD** include a short title forming a header. There **SHOULD** be a line above and below the header and a line at the bottom of the algorithm. Editors **SHOULD** use the markdown 


---


**Listing 1.1** Sample Title  
---


```
currentMax ← A[0]  
    for i ← 1 to n \-1 do  
        if A[i] \> currentMax then  
            currentMax ← A[i]  
    { increment counter i }  
    return currentMax  
```


---


**Code Snippets**: Actual code samples and snippets **MUST** be numbered, **MAY** use a section number followed by a dot which is then followed by a code sample number (see example below) to track the code samples within a particular section, **SHOULD** be numbered consecutively, and **SHOULD** include a short title forming a header. There **SHOULD** be a line above and below the header. A single header **MAY** be used for multiple code samples in a block, but in this case, each sample **SHOULD** individually be numbered as shown below. The code itself **SHOULD** use the Markdown Fenced Code Blocks feature and programming language designator to style the code snippet. Meaning that the first code line will start with three back tick characters (\`\`\`) followed by the language (e.g., json, yaml, cpp, go, etc) and the last line starts with three back tick characters (\`\`\`).


---


**Code 1.1** Sample Title  
---


*Some subheading (e.g., Example 1.1.1 \- Some example code)*  
```json  
{  
  "Some key": "some value"  
}  
```


*Some subheading (e.g., Example 1.1.2 \- Some other example code)*  
```xml 
<your xml> 
```


**Figures and Tables**: All figures **MUST** be numbered and **MAY** use a section number followed by a hyphen which is then followed by a figure number (see example below) to track the figures within a particular section. When referencing a figure or table please use the abbreviation "Fig." for figures and "Table" for tables. Tables **SHOULD** be numbered with Roman numerals.


Figure 2-1  
![FIG2-1](figure2-1.png)
**Fig. 2-1.** This is a sample of a figure caption.


Table I  
This is a Sample of a Table Title


| Name | \#1 | \#2 | \#3 | \#4 | \#5 |
| :---: | :---: | :---: | :---: | :---: | :---: |
| **AB** | 3 | 3 | 6 | 11 | 9 |
| **BC** | 7 | 7 | 4 | 12 | 9 |
| **CD** | 10 | 3 | 3 | 9 | 7 |
| **DE** | 3 | 7 | 10 | 5 | 6 |
| **DF** | 7 | 1 | 12 | 1 | 3 |
| **ZZ** | 5 | 12 | 11 | 9 | 8 |


**Table I:** This table contains information about x and y and z.


## Other Instructions


**References:** OASIS uses the IEEE Reference format for citations. However, unlike the IEEE Reference format the in-line tokens can be either named or a number; in either case they are enclosed in square braces. Editors **SHOULD** be consistent in the body of the document and use either named tokens "[RFC2119]" or numbered "[1]" tokens, but not both. Any named tokens that are used in the template front matter do not impact the decision about named or numbered in the body of the document. All other rules about in-line use and style **MUST** follow the IEEE Reference format found here: [https://journals.ieeeauthorcenter.ieee.org/wp-content/uploads/sites/7/IEEE\_Reference\_Guide.pdf](https://journals.ieeeauthorcenter.ieee.org/wp-content/uploads/sites/7/IEEE_Reference_Guide.pdf)


**Definitions and Terms:** It is generally more consistent to refer to an existing official definition in other open standards or readily-available nonproprietary reference documents, rather than to redefine a term. It is a best practice to refer to the specific version or date of the source document for a definition, either explicitly or by a reference link to the specific version (not a ‘current version’ link). Normally, terms defined elsewhere will simply refer to the defining document. In certain cases, it may be desirable to quote the definition to allow for a stand-alone document. Before defining a new term, verify whether it has already been defined in an official document elsewhere such as in another OASIS Standard, the ITU terminology database ([https://www.itu.int/br\_tsb\_terms/\#/](https://www.itu.int/br_tsb_terms/#/)), ISO terms ([https://www.iso.org/obp/ui](https://www.iso.org/obp/ui)), IEEE/IEC electropedia ([https://www.electropedia.org/IEEE](https://www.electropedia.org/IEEE)), IETF, CEN/CENELEC, or NIST ([https://csrc.nist.gov/glossary](https://csrc.nist.gov/glossary)).


**Annex vs Appendix:** An annex is considered a normative part of the Note, meaning that it **MUST** be included with the document and its contents form an integral part of the document. An Appendix is purely informational content and is not required to be included with the document.


Under the heading of each Annex the following text **MUST** be present:  
(This annex forms an integral part of this document.)


Under the heading of each Appendix the following text **MUST** be present:  
(This appendix does not form an integral part of this document and is informational.)


- Annex A **MUST** be the License, Document Status and Notices information.  
- Annex B **MUST** be the References information.  
- Annex C+ can be whatever is needed  
- Appendix 1 **MUST** be the Acknowledgments information  
- Appendix 2 **MUST** be the Changes From Previous Version information  
- Appendix 3+ can be whatever is needed


\>






![OASIS](OASIS-Logo.png)


---


# [ DOCUMENT NAME ] Version \#.\#


## Committee Note [ Draft ] \#\#


## [ DD ] [ Month ] [ YYYY ]


### This version


- [ link to authoritative version of the published document ] (Authoritative)  
- [ links to one or more other versions of the published document (e.g., MD, PDF, Word, HTML, etc.) ] 


### Previous version


- [ link to authoritative version of the published document ] (Authoritative)  
- [ links to one or more other versions of the published document (e.g., MD, PDF, Word, HTML, etc.) ] 


### Latest version


- [ link to authoritative version of the published document ] (Authoritative)  
- [ links to one or more other versions of the published document (e.g., MD, PDF, Word, HTML, etc.) ] 


### Technical Committee


[ The full name of the technical committee linked to their landing page ]


### Chairs


- [ First Name Last Name (email), Company ]   
- [ First Name Last Name (email), Company ] 


### Secretaries


- [ First Name Last Name (email), Company ]   
- [ First Name Last Name (email), Company ] 


### Editors


- [ First Name Last Name (email), Company ]   
- [ First Name Last Name (email), Company ] 


### Abstract


[ Document abstract ]


### Citation Format


When referencing this document, the following citation format should be used:


- [ The full reference for this document in IEEE reference format ] 


### Related Work


This document replaces or supersedes:


- [ The full reference to the related document in IEEE reference format ] 


This document is related to:


- [ The full reference to the related document in IEEE reference format ] 


## License, Document Status, and Notices


Copyright © OASIS Open 202[ 5 ]. All Rights Reserved.  For license and copyright information, and complete status, please see Annex A which contains the License, Document Status and Notices.


---


## Table of Contents


- [1 Scope](#1-scope)
- [2 Definitions and Acronyms](#2-definitions-and-acronyms)
  - [2.1 Definitions](#2.1-definitions)
    - [2.1.1 Terms Defined Elsewhere](#2.1.1-terms-defined-elsewhere)
    - [2.1.2 Terms Defined in this Document](#2.1.2-terms-defined-in-this-document)
  - [2.2 Abbreviations and Acronyms](#2.2-abbreviations-and-acronyms)
- [3 Document Conventions](#3-document-conventions)
  - [3.1 Key Words](#3.1-key-words)
  - [3.2 Typographical Conventions](#3.2-typographical-conventions)
- [4 Introduction](#4-introduction)
  - [4.1 Any Additional Introduction Subsections That are Needed](#4.1-any-additional-introduction-subsections-that-are-needed)
  - [4.2 Changes From the Previous Version](#4.2-changes-from-the-previous-version)
- [5 Level 1 Section Header](#5-level-1-section-header)
  - [5.1 Level 2 Section Header](#5.1-level-2-section-header)
    - [5.1.1 Level 3 Section Header](#5.1.1-level-3-section-header)
      - [5.1.1.1 Level 4 Section Header](#5.1.1.1-level-4-section-header)
        - [5.1.1.1.1 Level 5 Section Header](#5.1.1.1.1-level-5-section-header)
          - [5.1.1.1.1.1 Level 6 Section Header](#5.1.1.1.1.1-level-6-section-header)
- [6 Additional Sections as Needed](#6-additional-sections-as-needed)
- [7 Safety, Security, and Data Protection Considerations](#7-safety,-security,-and-data-protection-considerations)
- [8 Conformance](#8-conformance)
- [Annex A License, Document Status and Notices](#annex-a-license,-document-status-and-notices)
  - [A.1 Document Status](#a.1-document-status)
  - [A.2 License and Notices](#a.2-license-and-notices)
- [Annex B References](#annex-b-references)
  - [B.1 Normative References](#b.1-normative-references)
  - [B.2 Informative References](#b.2-informative-references)
- [Annex C Additional Annex as Needed](#annex-c-additional-annex-as-needed)
  - [C.1 Subsection Title](#c.1-subsection-title)
  - [C.1.1 Sub-subsection](#c.1.1-sub-subsection)
- [Appendix 1 Acknowledgments](#appendix-1-acknowledgments)
  - [Leadership](#leadership)
  - [Special Thanks](#special-thanks)
  - [Participants](#participants)
- [Appendix 2 Changes From Previous Version](#appendix-2-changes-from-previous-version)
  - [Revision History](#revision-history)
- [Appendix 3 Additional Appendix as Needed](#appendix-3-additional-appendix-as-needed)
  - [Subsection Title](#subsection-title)
- [Sub-subsection](#sub-subsection)


---


# 1 Scope


\<


What is the purpose and scope of this document?   
Best practices: 


- Expect this text to be reused in multiple other places to explain the document in summary form.  
- This is not the TC or OP scope (which is an IPR and rules boundary);  rather, this section is the summary intended purpose of this document.  
- Short is better; four paragraphs or less is recommended.  
- If use of this spec is deliberately created to rely on or complement another standard, consider briefly mentioning that here as context.  
- To the extent that discussion of the larger context of the spec, or its history, or the circumstances that led to its creation or revision, are necessary, they belong in the Introduction, not here. 


\>


---


# 2 Definitions and Acronyms


## 2.1 Definitions


### 2.1.1 Terms Defined Elsewhere


This document uses the following terms defined elsewhere:


- Term 1: [Reference]: optional quoted definition.  
- Term 2: [Reference]: optional quoted definition.
- etc


### 2.1.2 Terms Defined in this Document


This document defines the following terms:


- Term 1: some definition.  
- Term 2: some definition.  
- etc


## 2.2 Abbreviations and Acronyms


This document uses the following abbreviations and acronyms:


- Term 1: expanded form.  
- Term 2: expanded form.  
- etc


---


# 3 Document Conventions


## 3.1 Typographical Conventions


\< Describe any standards or typographical conventions that were followed when writing this document, such as fonts or highlighting that have special significance. If there are no typographical conventions than one is to put "None". \>


---


# 4 Introduction


\< Any introductory text that is needed to explain this document, including any discussion of the larger context of the document, or its history, or the circumstances that led to its creation or revision, as necessary. \>


## 4.1 Any Additional Introduction Subsections That are Needed


\< Any needed text \>


## 4.2 Changes From the Previous Version


\< This section is **REQUIRED** and **MUST** be the last numbered subsection in this section. \>
The list of changes from the previous version and any revision history can be found in Appendix 2\.


---


# 5 Level 1 Section Header


## 5.1 Level 2 Section Header


### 5.1.1 Level 3 Section Header


#### 5.1.1.1 Level 4 Section Header


##### 5.1.1.1.1 Level 5 Section Header


###### 5.1.1.1.1.1 Level 6 Section Header


---


# 6 Additional Sections as Needed


---


# 7 Safety, Security, and Data Protection Considerations


\< 


This section is **OPTIONAL** and if present **MUST** be the last numbered section in the document. This section contains information about safety, security, data protection, and privacy considerations. These can be divided up into separate subsections as desired. Any other considerations **MAY** also be added.


\>




---


# Annex A License, Document Status and Notices


(This annex forms an integral part of this document.)


## A.1 Document Status


This document was last revised or approved by the [ full project name e.g., OASIS Collaborative Automated Course of Action Operations (CACAO) for Cyber Security TC ] on the above date. The level of approval is also listed above. Check the "Latest version" location noted above for possible later revisions of this document. Any other numbered Versions and other technical work produced by the Technical Committee (TC) are listed at [ project publication page e.g., https://www.oasis-open.org/committees/tc\_home.php?wg\_abbrev=cacao\#technical ].


TC members should send comments on this document to the TC's email list. Others should send comments to the TC's public comment list, after subscribing to it by following the comment instructions at the TC's comments list web page at [ e.g. https://www.oasis-open.org/committees/comments/index.php?wg_abbrev=cacao ]


## A.2 License and Notices


Copyright © OASIS Open 202[ 5 ]. All Rights Reserved.


All capitalized terms in the following text have the meanings assigned to them in the OASIS Intellectual Property Rights Policy (the "OASIS IPR Policy"). The full Policy, which governs the licensure of this document, may be found at the OASIS website: [https://www.oasis-open.org/policies-guidelines/ipr/]


This document and translations of it may be copied and furnished to others, and derivative works that comment on or otherwise explain it or assist in its implementation may be prepared, copied, published, and distributed, in whole or in part, without restriction of any kind, provided that the above copyright notice and this section are included on all such copies and derivative works. However, this document itself may not be modified in any way, including by removing the copyright notice or references to OASIS, except as needed for the purpose of developing any document or deliverable produced by an OASIS Technical Committee (in which case the rules applicable to copyrights, as set forth in the OASIS IPR Policy, must be followed) or as required to translate it into languages other than English.


The limited permissions granted above are perpetual and will not be revoked by OASIS or its successors or assigns, as provided in the OASIS IPR Policy.


This document and the information contained herein is provided on an "AS IS" basis and OASIS DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION HEREIN WILL NOT INFRINGE ANY OWNERSHIP RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. OASIS AND ITS MEMBERS WILL NOT BE LIABLE FOR ANY DIRECT, INDIRECT, SPECIAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF ANY USE OF THIS DOCUMENT OR ANY PART THEREOF.


The name "OASIS" is a trademark of OASIS, the owner and developer of this document, and should be used only to refer to the organization and its official outputs. OASIS welcomes reference to, and implementation and use of, its documents, while reserving the right to enforce its marks against misleading uses. Please see [https://www.oasis-open.org/policies-guidelines/trademark/] for guidance.


---


# Annex B Bibliography


(This annex forms an integral part of this document.)


This section contains the informative references that are used in this document. 


Informative references are either specific or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the reference document (including any amendments) applies. While any hyperlinks included in this section were valid at the time of publication, OASIS cannot guarantee their long term validity.


## B.1 Informative References


The following referenced documents are not required for the application of this document but may assist the reader with regard to a particular subject area.


**[Reference 1]** Reference Details


**[Reference 2]** Reference Details


---


# Annex C Additional Annex as Needed


(This annex forms an integral part of this document.)


## C.1 Subsection Title


### C.1.1 Sub-subsection


---


# Appendix 1 Acknowledgments


(This appendix does not form an integral part of this document and is informational.)


\< 


All parts in this appendix are optional to the TC. Individuals or companies, past or present, may request that their name and/or affiliation is not included in this list. 


\>


## Leadership


The following individuals have had significant leadership positions during the development of this document, not just this version of the document, and they are gratefully acknowledged:


\< 


This section **SHOULD** include the leadership (chairs, sub committees chairs, secretaries, editors, etc.) of this document, and not just for this version of the document, even if they are no longer members of the TC.


\>


- Chairs  
  - Position, First Name Last Name, Company, [optional time frames]  
- Secretaries  
  - Position, First Name Last Name, Company, [optional time frames]  
- Editors  
  - Position, First Name Last Name, Company, [optional time frames]


## Special Thanks


The following individuals have made substantial contributions to this document, not just this version of the document, and their contributions are gratefully acknowledged:


\< 


This section **SHOULD** include individuals that have made significant contributions to this document, and not just this version of the document, even if they are no longer members of the TC or were never members of the TC but sent in a contribution through one of the public comment methods. 


\>


- First Name Last Name, Company


## Participants


The following individuals were members of this committee during the creation of this document, not just this version of the document, and their contributions are gratefully acknowledged:


- First Name Last Name, Company


---


# Appendix 2 Changes From Previous Version


(This appendix does not form an integral part of this document and is informational.)


\< 


The appendix **SHOULD** contain any explanatory text about the reason for this version including any major changes. The level of detail that is included in this appendix is up to the editors and chairs of the TC to determine. This appendix is **REQUIRED**, if there are no changes then one is to put "None." In addition to any descriptive text, all major changes **SHOULD** be in a bulleted list so that reviewers and implementers can easily understand what they need to know.


\>


- Change 1  
- Change 2


## Revision History


- \< Date in yyyy-mm-dd format \>, \< Revision number \>  
- \< Date in yyyy-mm-dd format \>, \< Revision number \>


---


# Appendix 3 Additional Appendix as Needed


(This appendix does not form an integral part of this document and is informational.)


## Subsection Title


### Sub-subsection


\< The following centered line represents the end of the document \>  
\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_