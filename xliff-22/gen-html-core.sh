#!/bin/sh
rm -f xliff-core-v2.2wd.html
java -jar lib/saxon.jar -o xliff-core-v2.2wd.html xliff-core-v2.2wd.xml stylesheets/oasis-specification-html.xsl
