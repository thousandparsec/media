#! /bin/sh

find . -name '.svn' -prune -o -type f -exec echo 'svn propset svn:mime-type `gnomevfs-info {} | grep MIME | cut -d : -f 2 | cut -c 2-` {}' \;
