#!/bin/sh
# Can this be parallized some how?
verbose=1

while read -r file url
do
	set -- $(curl -m5 -w '%{http_code} %{url_effective}' -L -s -I --output /dev/null "$url")
	test "$verbose" || { test "$1" -eq "200" && continue; }
	if test "$url" != "$2" # Is the original URL the same as the url_effective ?
	then # if not, append the new URL on the line
		echo -e "$1\t$file\t${url}\t$2"
	else
		echo -e "$1\t$file\t$url"
	fi
done
