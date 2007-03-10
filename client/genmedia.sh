#! /bin/sh


find -type f -exec ls -l '{}' ';' | \
	grep -v .svn | grep -v .swp | grep -v .meta | \
	sed -e 's|.*\([0-9][0-9][0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9]\) \([0-9][0-9]\):\([0-9][0-9]\) \(.*\)|\6 \1\2\3T\4\5 0 None|' \
		> media-new
gzip -f media-new

