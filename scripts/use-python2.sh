#!/bin/bash

# Substitute shebangs in python scripts
sed -i -b -r "s#(\#\!/usr/bin/env python\$|\#\!/usr/bin/python\$)#\12#" $(find $1 -type f -name "*.py")

# Substitute the occurrences like "<!(python" in py and gyp files
sed -i -b -r "s#(<\!\(python)(\s+)#\12\2#" $(find $1 -type f \( -name "*.gyp" -o -name "*.py" \))