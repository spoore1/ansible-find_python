# ansible-find_python
Example Ansible Role for handling different python versions on targets

This Ansible Role is intended as a simple example showing a way to
differentiate how to handle different versions of python on different 
systems.

It uses a simple shell script to prioritize the version/path of python 
to use.  This priority is currently set as:

1. /usr/libexec/platform-python
2. /usr/bin/python3
3. /usr/bin/python2
4. /usr/bin/python

If nothing found it returns python_not_found and return code 1.

The main task uses the find_python.yml task to set the interpreter.

It then includes a task based on the basename of the python
executable found.  "e.g. python3.yml".  

Each python version task file sets some base facts to be used 
in later tasks in the main task file.

Basic flow is:
1. main.yml -> find_python.yml
2. find_python.yml -> find_python.sh
3. find_python.sh returns /usr/bin/python3
4. main.yml -> python3.yml
5. python3.yml sets facts
6. main.yml prints facts
