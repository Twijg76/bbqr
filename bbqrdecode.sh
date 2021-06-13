#!/bin/sh
# Decode from camera or file (-r), automatically opens the index.* file with xdg-open
DIR=$(pwd)
mkdir -p ~/.cache/bbqr
cd ~/.cache/bbqr || exit


case "$1" in 
	-r)
		zbarimg -q --oneshot -Sbinary "$DIR/$2" > $$.tar.gz 2> /dev/null
		;;
	*)
		zbarcam -q --oneshot -Sbinary > $$.tar.gz 2> /dev/null
		echo "Scanning done"
		;;
esac

mkdir -p "$$"
tar -xzf "$$.tar.gz" -C "$$"
rm "$$.tar.gz"
cd $$ || exit
xdg-open index.* 2> /dev/null || echo "Can't open file, you can find all received files in ~/.cache/bbqr/$$/"
echo "$?"

[ "$?" != 0 ] && echo "Can't open file, you can find all received files in ~/.cache/bbqr/$$/"
