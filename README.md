# pycharm-helpers
The coverage tool works for py.test. Make coverage.sh executable and in PyCharm, make an external tool for it, putting the path to the script under Program. Put $PyInterpreterDirectory$ under Arguments and $ProjectFileDir$ under Working directory. You can use the included icon to add a new tool in the PyCharm toolbar for test coverage.

PyCharm's documentation builder does not regenerate the source rst files. To fix, make sphinx-apidoc.sh executable. In PyCharm, make a new Python configuration, putting the path to shell.py under "Script path". For parameters put the path to sphinx-apidoc.py followed by the relative path to the documentation source folder and then the relative path to the root Python module. Put the Working directory as your project's documentation directory.
eg. 
Script path = /home/mcarans/Programming/pycharm-helpers/shell.py
Parameters = /home/mcarans/Programming/pycharm-helpers/sphinx-apidoc.sh source ../src/hdx
Working directory = /home/mcarans/Programming/hdx-python-utilities/documentation

From the PyCharm created sphinx documentation configuration, add a "Before Launch" task. Choose "Run Another Configuration" and select the configuration you created above.

There is a file watcher that runs flynt and shed (which includes black and isort). The advantage of this bash script over calling directly is that autosaving can be left on as the tools are run int the background after a delay.

## Deprecated
These are no longer necessary as PyCharm now has the functionality built in.

Change PyCharm's terminal in settings to "/bin/bash --rcfile PATH_TO_REPO/.pycharmrc" - the PyCharm terminal will open in your virtualenv.

