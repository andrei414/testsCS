#!/bin/bash

if grep -q error "$file.txt"; then
  exit 1 # SomeString was found
fi