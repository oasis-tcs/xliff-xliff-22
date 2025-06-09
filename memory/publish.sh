# ./node_modules/commonmark/bin/commonmark xliff-memory-v1.0-cnd01.md > body.html
pandoc -f gfm -t html -o body.html xliff-memory-v1.0-cnd01.md
cat assets/head.html body.html assets/tail.html > xliff-memory-v1.0-cnd01.html
rm -f body.html

