#!/bin/sh

tag=$1
comment=$2

echo "receive params:[$@]"

ssh root@blog.zhouzhipeng.com "\
docker  commit -m '${comment}' wordpress  registry.cn-shanghai.aliyuncs.com/zhouzhipeng/wordpress:${tag} &&  docker push  registry.cn-shanghai.aliyuncs.com/zhouzhipeng/wordpress:${tag} \
"
