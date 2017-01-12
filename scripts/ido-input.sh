#!/bin/bash

cd ~/github/todo
vim INBOX.md
git commit -a -m 'input'
git push > /dev/null 2>&1 &
