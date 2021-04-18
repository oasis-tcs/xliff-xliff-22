<?xml version="1.0" encoding="utf-8"?>

<!DOCTYPE schematron [
<!-- Entities for XLIFF V2.x publishing.................................... -->
<!--copy all of these to all *.sch files and also to the Oxygen framework for validating Docbook 4.5 if you use Oxygen -->
<!ENTITY name "xliff-core-v2.1">
<!ENTITY pversion "2.0">
<!ENTITY version "2.1">
<!ENTITY bschversion "2.0">
<!ENTITY cschversion "2.1">

<!ENTITY stage "os">
<!ENTITY pstage "cos02">
<!ENTITY standard "OASIS Standard">
<!ENTITY this-loc "http://docs.oasis-open.org/xliff/xliff-core/v&version;/&stage;">
<!ENTITY previous-loc "http://docs.oasis-open.org/xliff/xliff-core/v&version;/&pstage;">
<!ENTITY latest-loc "http://docs.oasis-open.org/xliff/xliff-core/v&version;">
<!ENTITY pubdate "13 February &pubyear;">
<!ENTITY pubyear "2018">
<!ENTITY releaseinfo "Standards Track Work Product">

<!-- End of XLIFF V2.x publishing entities -->
]>

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding='xslt2'>
    <sch:title>Schematron rules for checking the constraints of the Size and Length Restriction module against XLIFF Version &version;</sch:title>
    <sch:ns prefix="slr" uri="urn:oasis:names:tc:xliff:sizerestriction:2.0"/>
    <sch:ns prefix="xlf" uri="urn:oasis:names:tc:xliff:document:2.0"/>    
    <sch:pattern id="slr1">
        <sch:rule context="xlf:*[@slr:sizeInfoRef]">
            <sch:let name="fragid" value="concat('f=',ancestor::xlf:file/@id)"/>
            <sch:assert diagnostics="fragid-report" see="&this-loc;/&name;-&stage;.html#slr_size_info"
                test="not(@slr:sizeInfo)">
                The slr:sizeInfoRef and slr:sizeInfo attributes cannot appear together. 
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <sch:diagnostics>
        <sch:diagnostic id="fragid-report">#<sch:value-of select="$fragid"/></sch:diagnostic>
    </sch:diagnostics>
</sch:schema>