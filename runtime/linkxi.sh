#!/bin/sh
#
# This is a very simple script that uses gcc to link in a given .s
# file to the Xi runtime library, and uses xifilt to help 
# decode error messages
#
# Use this like ./linkxi.sh -o binary foo.s

DIR="`dirname $0`"
gcc -m64 $* -L$DIR -lxi -lpthread 2>&1 | $DIR/xifilt
