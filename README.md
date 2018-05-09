# pycharm-helpers
The coverage tool works for py.test. Make coverage.sh executable and in PyCharm, make an external tool for it, putting the path to the script under Program. Put $PyInterpreterDirectory$ under Arguments and $ProjectFileDir$ under Working directory. You can use the included icon to add a new tool in the PyCharm toolbar for test coverage.

Make sphinx-apidoc.sh executable and in PyCharm, make an external tool for it, putting the path to the script under Program. Put $PyInterpreterDirectory$ XXX YYY under Arguments where XXX is the relative path to the documentation source folder and YYY is the relative path to the root Python module. Put $ProjectFileDir$ under Working directory.

## Deprecated
These are no longer necessary as PyCharm now has the functionality built in.

Change PyCharm's terminal in settings to "/bin/bash --rcfile PATH_TO_REPO/.pycharmrc" - the PyCharm terminal will open in your virtualenv.

