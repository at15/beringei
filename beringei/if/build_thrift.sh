#!/bin/bash

# Fail script on any error.
set -e

# Build thrift files.
for THRIFT_FILE in "$@"; do
    echo "Building file: " $THRIFT_FILE
    # python2 -mthrift_compiler.main --gen cpp2 "$THRIFT_FILE" -I../..
    /usr/local/facebook/bin/thrift1 --templates /usr/local/facebook/include/thrift/templates --gen mstch_cpp2 -I ../.. "$THRIFT_FILE"
done
