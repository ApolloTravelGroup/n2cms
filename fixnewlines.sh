#!/bin/bash

expand_func () {
  dos2unix -b -n "$1" "$1.tmp"
  mv "$1.tmp" "$1"
}

export -f expand_func

find . -name \*.cs -exec bash -c 'expand_func {}' \;

