# vuepress-theme-vdoing 主题

这是一个基于 vuepress-theme-vdoing 的博客模板，帮助您快速搭建个人博客。

[原作者 Evan Xu](https://github.com/xugaoyi)

[原仓库 https://github.com/xugaoyi/vuepress-theme-vdoing](https://github.com/xugaoyi/vuepress-theme-vdoing)
## 特性

- **简洁优雅**：简洁的设计，优秀的用户体验。
- **高度可定制**：根据个人需求轻松定制博客结构和样式。
- **强大的插件支持**：丰富的插件生态，轻松扩展功能。
- **SEO 优化**：内置 SEO 支持，提升搜索引擎收录效果。

## 快速开始

1. 拉取项目
首先，克隆仓库到本地：
   ```bash
   git clone https://github.com/unique-pure/my-vdoing-blog-template
   ```

2. 修改 docs 目录
将 docs 目录中的示例文章替换为您自己的文章，并根据需求修改网站结构。

3. 创建 username.github.io 仓库
在 GitHub 上创建一个名为 username.github.io 的仓库，其中 username 为您的 GitHub 用户名。
4. 修改 deploy.sh
打开项目中的 deploy.sh 文件，将 push_address 修改为您自己的仓库地址：
   ```deploy.sh
   push_address=git@github.com:username/username.github.io.git
   ```
5. 安装依赖
   在项目根目录下运行以下命令来安装依赖：
   ```sh
   npm install
   ```
6. 本地预览
   在项目根目录下运行以下命令来启动本地开发服务器：
   ```sh
   npm run dev
   ```
   浏览器中打开 http://localhost:8080 即可预览您的博客。
7. 部署服务
   使用以下命令部署您的博客：
   ```sh
   npm run deploy "commit_info"
   ```
   其中 `commit_info` 为您的提交信息。