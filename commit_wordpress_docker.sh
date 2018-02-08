#!/bin/sh

tag=$1
comment=$2

ssh zhipeng.zhou@blog.zhouzhipeng.com "\
docker  commit -m '$comment' wordpress  registry.cn-shanghai.aliyuncs.com/zhouzhipeng/wordpress:$tag  \ 
&&  docker push  registry.cn-shanghai.aliyuncs.com/zhouzhipeng/wordpress:$tag \
"
