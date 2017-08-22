#!/usr/bin/env bash
. $(dirname "$0")/.pycharmrc
py.test --cov-config .coveragerc --cov-report html --cov=.
google-chrome htmlcov/index.html
