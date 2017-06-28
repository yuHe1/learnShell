#!/bin/bash -ex
#Learn how to use sed to replace string in file
sed 's/8080/8079/'  build.properties
grep -rnwi "." -e "8080"
