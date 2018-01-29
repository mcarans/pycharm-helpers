#!/usr/bin/env bash
# $1 eg. source
# $2 eg. ../src/hdx
rm -f $1/*
sphinx-apidoc -f -o ./$1 $2
