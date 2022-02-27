#!/bin/bash
# pattern matching

var=$(getent passwd educafe)
echo "var="$var
echo ${var%:*}
echo ${var%%:*}
echo

var=/usr/local/src/prog.c
echo ${var#/*/}
echo ${var##/*/}

var=helloworld
var="${var%?????}"
echo $var

var=helloworld
echo ${var:0:5}

