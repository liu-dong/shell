#!/bin/sh

# write by    : yuanquan.ld@gmail.com
# date        : 2013-03-04
# version     : 0.0.1

USER_NAME=yuanquan.ld
ALL_SERVER=~/bin/server

while read line
do
echo "$line doing"
ssh $line <<EOF
$*
EOF
done < $ALL_SERVER