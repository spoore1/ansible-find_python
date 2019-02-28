#!/bin/sh

if [ -f /usr/libexec/platform-python ]; then
    echo -n /usr/libexec/platform-python
elif [ -f /usr/bin/python3 ]; then
    echo -n /usr/bin/python3
elif [ -f /usr/bin/pyton2 ]; then
    echo -n /usr/bin/python2
elif [ -f /usr/bin/python ]; then
    echo -n /usr/bin/python
else
    echo -n python_not_found
    exit 1
fi
