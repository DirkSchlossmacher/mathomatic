#!/bin/sh
# Shell script to test Mathomatic.
#
# This script now supports running the test suite after building with
# the provided CMake configuration.  If a mathomatic executable exists
# in the repository root we use the existing Makefile targets, otherwise
# we look for one in the "build" directory.

set -e

if [ -x ./mathomatic ]; then
    set -x
    make check
elif [ -x ./build/mathomatic ]; then
    echo "Running tests using ./build/mathomatic"
    set -x
    cd tests && ../build/mathomatic -t all 0<&- >test.out && diff -u --strip-trailing-cr all.out test.out && rm test.out && cd ..
    echo "All tests passed 100% correctly."
else
    echo "mathomatic executable not found. Please build it first." >&2
    exit 1
fi
