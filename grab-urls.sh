#!/bin/sh
test -e "$1" || exit
grep -H -r --only-matching --perl-regexp "http(s?):\/\/[^ \"\(\)\<\>\]]*" $1 | sort | uniq | sed 's/:/ /' | ./check-urls.sh
