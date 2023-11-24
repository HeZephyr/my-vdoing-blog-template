#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 推送博客
git add .
if git diff-index --quiet HEAD --; then
  echo "blog No changes to commit."
else
  git commit -m $1
  git push -u origin main --force
fi

# 生成静态文件
npm run build
dist_path=docs/.vuepress/dist # 打包生成的文件夹路径
# 进入生成的文件夹
cd $dist_path

# 将./.git移动到./docs/.vuepress/dist/.git
if [ -d ../.git ]; then
  cp -rf ../.git .
else
  git init
  push_address=git@github.com:unique-pure/unique-pure.github.io.git # git提交地址
  git remote add origin $push_address 
fi

# 推送github pages
# 
commit_info=`git describe --all --always --long`
push_branch=main # 推送的分支


echo 'unique-pure.github.io' > CNAME
git add -A
git commit -m "deploy: $commit_info"
git push -u origin $push_branch
cp -rf .git ../
cd -


