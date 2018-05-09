#!/usr/bin/env bash
# $1 eg. source
# $2 eg. ../src/hdx
. $1/activate
rm -f $2/*
sphinx-apidoc -f -o ./$2 $3
