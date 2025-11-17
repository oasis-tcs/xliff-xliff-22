#!/bin/sh
XML_FILE=xliff-core-v2.2-part1.xml
rm -f $XML_FILE
java -cp lib/merger.jar com.maxprograms.xml.Merger core22.xml $XML_FILE