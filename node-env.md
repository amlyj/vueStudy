# 配置nodejs 环境

### 安装NodeJS
* 1.下载7.0以上nodejs 软件包[下载地址](https://nodejs.org/download/release/)
* 2.配置环境变量
* 3.检查安装版本

* **一键安装脚本** [下载](./shell/node.sh)


### 安装vue
 * 安装vue : `npm install vue`
 * 安装vue-cli : `npm install vue-cli -g`
 * 安装webpack : `npm install webpack -g`
 * 创建项目`vue-app` ：`vue init webpack vue-app`
   example:
  ```shell
  aric@ubuntu:~/aric$ vue init webpack vue-app

  ? Project name vue-app
  ? Project description A Vue.js project
  ? Author tom <liyuanjunmail@gmail.com>
  ? Vue build standalone
  ? Install vue-router? Yes
  ? Use ESLint to lint your code? Yes
  ? Pick an ESLint preset Standard
  ? Setup unit tests with Karma + Mocha? Yes
  ? Setup e2e tests with Nightwatch? Yes

     vue-cli · Generated "vue-app".

     To get started:

       cd vue-app
       npm install
       npm run dev

     Documentation can be found at https://vuejs-templates.github.io/webpack

  aric@ubuntu:~/aric$
  ```
* 进入项目安装依赖包 : `cd vue-app && npm install`
* 启动项目 ： `npm run dev`
