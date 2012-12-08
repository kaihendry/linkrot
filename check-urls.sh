#!/bin/sh

while IFS=: read -r mdwn url
do
	set -- $(curl -m5 -w '%{http_code} %{url_effective}' -L -s -I --output /dev/null $url)
	if test "$url" != "$2" # Is the original URL the same as the url_effective ?
	then # if not, append the new URL on the line
		echo -e "$1\t$mdwn\t${url}\t$2"
	else
		echo -e "$1\t$mdwn\t$url"
	fi
done
