@echo off

if exist "lib\saxon6-5-5\saxon.jar" goto :gotsaxon
echo Cannot find "lib\saxon6-5-5\saxon.jar" version 6.5.5 from: 
echo   https://sourceforge.net/projects/saxon/files/saxon6/6.5.5/
echo Download saxon6-5-5.zip and extract it in the "lib" folder.
goto :eof
:gotsaxon

java -jar lib\saxon6-5-5\saxon.jar -o xliff-extended-v2.2wd.html xliff-extended-v2.2wd.xml stylesheets\oasis-specification-html.xsl
