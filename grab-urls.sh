#!/bin/sh
test -d $1 || exit
grep -r --only-matching --perl-regexp "http(s?):\/\/[^ \"\(\)\<\>]*" $1/ | sort | uniq
