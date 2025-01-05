#!/bin/bash
if [ $# -eq 0 ]
then
  echo "No arguments"
else
  for name in $*
  do
    if grep $name /etc/passwd > /dev/null
    then
      echo "Login name: $name"
      hdir=`grep $name /etc/passwd | cut -d ':' -f6`
      echo "Home Directory: $hdir"
    else
      echo "$name is not a valid Login name"
    fi
  done
fi
