#!/bin/bash
VERSION="0.0.4"
DEST="./dist/pcottleexample.$VERSION.tar.gz" 
tar -cf $DEST src/*.py example
git add $DEST
