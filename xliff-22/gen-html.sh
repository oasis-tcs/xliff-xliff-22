#!/bin/sh
rm -f xliff-extended-v2.2wd.html
java -jar lib/saxon.jar -o xliff-extended-v2.2wd.html xliff-extended-v2.2wd.xml stylesheets/oasis-specification-html.xsl
