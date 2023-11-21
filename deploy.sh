#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 推送博客
git add .
if git diff-index --quiet HEAD --; then
  echo "blog No changes to commit."
else
  git commit -m $1
  git push
fi

# 生成静态文件
npm run build

# 推送github pages
# push_address=git@github.com:unique-pure/unique-pure.github.io.git # git提交地址
commit_info=`git describe --all --always --long`
dist_path=docs/.vuepress/dist # 打包生成的文件夹路径
push_branch=main # 推送的分支

# 进入生成的文件夹
cd $dist_path
echo 'unique-pure.github.io' > CNAME

git add -A
git commit -m "deploy: $commit_info"
git push

cd -


