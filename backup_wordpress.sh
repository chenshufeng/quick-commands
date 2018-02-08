#!/bin/sh

# 在自己本机上执行，先安装好对应wordpress的docker版mysql库
docker exec -it  mysql5.7 bash -c "cd /wordpress-backup && mysqldump -h blog.zhouzhipeng.com -P 3307 -uroot -p wordpress > wordpress.sql"
