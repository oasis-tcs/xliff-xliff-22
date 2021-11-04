#!/bin/bash
export CURRENT=$PWD
cd "$(dirname "$0")/"
export CP="$PWD/lib/merger.jar"
cd $CURRENT
java -cp $CP com.maxprograms.xml.Merger $@