#!/usr/bin/env bash
. $1/activate
py.test --cov-config .coveragerc --cov-report html --cov=.
xdg-open htmlcov/index.html &
