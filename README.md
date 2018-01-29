# pycharm-helpers
The coverage tool works for py.test. Make coverage.sh executable and in PyCharm, make an external tool for it, putting the path to the script under Program. Put $PyInterpreterDirectory$ under Arguments and $ProjectFileDir$ under Working directory. You can use the included icon to add a new tool in the PyCharm toolbar for test coverage.


## Deprecated
These are no longer necessary as PyCharm now has the functionality built in.

Change PyCharm's terminal in settings to "/bin/bash --rcfile PATH_TO_REPO/.pycharmrc" - the PyCharm terminal will open in your virtualenv.

Make external tools for sphinx-apidoc.sh. Add it to the standard documentation generation configuration in PyCharm - not sure why this part of api generation is missing in the first place in PyCharm.
