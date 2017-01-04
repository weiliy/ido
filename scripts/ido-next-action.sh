#!/bin/bash
cat action.md  | grep -v -E '^\s*(-[ ]*\[x\]|$)'
