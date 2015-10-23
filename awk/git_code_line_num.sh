# write by    : yuanquan.ld@gmail.com
# date        : 2015-10-11
# version     : 0.0.1
# desc        : 统计所有commit，insert和delete的行数

git log --shortstat | grep 'changed' | sed 's/.*changed,//' | sed -E 's/insertions?//' | sed -E 's/deletions?//' | sed 's/(//g' | sed 's/)//g' | awk -F ',' '{if(NF==2) print $1"\n"$2; else print $1;}' | sed 's/^ //' | awk '{if($2=="+") add=add+$1; else subs=subs+$1}END{printf " added lines: %s \n removed lines : %s \n total lines: %s\n",add,subs,add-subs}'