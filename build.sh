#!/bin/bash

# 该PHP项目最终要部署到/data/webroot/phpsrc/test下面
rm -rf deployment

# 代码
mkdir -p deployment/code
cp index.php deployment/code
cp test.conf deployment/

# 部署脚本
cp deploy.sh deployment/

# 打包目录
cd deployment
tar czvf ../deploy.tar.gz *
cd -

# 删除临时目录
rm -rf deployment