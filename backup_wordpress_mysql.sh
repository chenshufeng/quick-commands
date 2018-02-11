#!/bin/sh

# 在自己本机上执行，先安装好对应wordpress的docker版mysql库
docker exec mysql5.7 bash -c "cd /wordpress-backup && mysqldump -h blog.zhouzhipeng.com -P 3307 -uroot -p $1 wordpress > wordpress_`date +%Y%m%d`.sql"
