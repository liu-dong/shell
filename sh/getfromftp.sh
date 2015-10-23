#!/bin/sh

# write by    : yuanquan.ld@gmail.com
# date        : 2013-10-15
# version     : 0.0.1

ftp -in  <<EOF
open 172.24.37.29 
user pubftp look
passive
bin
get $1 
bye
EOF