#!/bin/bash

# 代码部署到test目录
cp -r code /data/webroot/phpsrc/test
# 部署nginx配置
cp test.conf /etc/nginx/conf.d/