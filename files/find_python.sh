#!/bin/sh

PATHS="
/usr/libexec/platform-python
/usr/bin/python3
/usr/bin/python2
/usr/bin/python
"

for i in $PATHS; do
    if [ -f "$i" ]; then
        echo -n "$i"
        exit 0
    fi
done

echo "python_not_found"
exit 1
