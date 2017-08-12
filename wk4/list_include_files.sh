#!/bin/sh

egrep "^#include" "$@" | sed 's/[">][^">]*$//' | sed 's/^.*["<]//' | sort | uniq
