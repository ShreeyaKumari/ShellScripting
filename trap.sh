#!/bin/bash
stty -echo
echo "Enter password: "
read pass1
echo "Confirm password: "
read pass2
if [ "$pass1" = "$pass2" ]
then
  echo "Terminal is locked"
  trap 1 2 15
  while true
  do
    echo "Enter password"
    read pass3
    if [ "$pass3" = "$pass2" ]
    then
      echo "Terminal Unlocked"
      stty echo
      exit
    else
      echo "Try again"
    fi
  done
fi
