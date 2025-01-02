#!/bin/bash

echo "all the variables  passed to the script $@"
echo "no of variables passed to the script : $#"
echo "script name : $0"
echo "working  directory : $PWD"
echo "pid of the script executing now: $$"
echo "home dir of current user: $HOME"
echo "pid of last background process: $!"