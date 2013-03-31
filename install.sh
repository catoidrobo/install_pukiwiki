#!/bin/sh

TMP=/tmp/a.$$

wget http://globalbase.dl.sourceforge.jp/pukiwiki/12957/pukiwiki-1.4.7_notb_utf8.tar.gz
tar -xzvf pukiwiki-1.4.7_notb_utf8.tar.gz
rm pukiwiki-1.4.7_notb_utf8.tar.gz*
mv pukiwiki-1.4.7_notb_utf8 pukiwiki
mv pukiwiki /var/www/

cd /var/www/pukiwiki/
sed -e 's/^\?>//' pukiwiki.ini.php >$TMP
echo "\$modifier = '$1';" >> $TMP
echo "\$adminpass = '$2';" >> $TMP
echo "?>" >> $TMP
mv $TMP pukiwiki.ini.php
