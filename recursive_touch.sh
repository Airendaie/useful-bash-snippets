#!/bin/bash
#This snippet recursively touches all files in the directory tree under the current directory

find . -exec touch {} \;
