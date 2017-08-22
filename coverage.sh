#!/usr/bin/env bash
. ~/.pycharmrc
py.test --cov-config .coveragerc --cov-report html --cov=.
google-chrome htmlcov/index.html
