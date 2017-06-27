#! /bin/bash
cd /tmp && mkdir nodejs-temp && cd nodejs-temp &&\
wget https://nodejs.org/download/release/latest-v7.x/node-v7.10.0-linux-x64.tar.gz &&\
sudo tar zxvf node-v7.10.0-linux-x64.tar.gz -C /usr/local/ &&\
sudo echo 'export NODE_HOME=/usr/local/node-v7.10.0-linux-x64' >> /etc/profile &&\
sudo echo 'export PATH=$NODE_HOME/bin:$PATH' >> /etc/profile &&\
source /etc/profile &&\
echo "install nodejs version：" &&\
rm -rf /tmp/nodejs-temp &&\
sleep 1 &&\
echo "配置npm软件源" &&\
sleep 1 &&\
npm config set registry https://registry.npm.taobao.org && npm info underscore &&\
sleep 1 &&\
node --version &&\
echo -e "node js install success\n...\n"
