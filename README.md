# Dealing with linkrot on a blog

Check out the blog. Your blog is in git in Markdown right?

	git clone git://github.com/kaihendry/natalian.git myblog

Grab the URLs out of them:

	./grab-urls.sh myblog > urls.txt

Check the URLs:

	./check-urls.sh < urls.txt > urls-checked.txt

# TODO

* How to detect 200 responding squatted domains like http://www.axis-of-aevil.org/ ?
