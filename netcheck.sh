#!/bin/bash

# 获取脚本所在路径
BASE_PATH=$(dirname $(
  cd $(dirname "$0")
  pwd
))
echo $BASE_PATH

# 不需要额外的 shell 命令，比如 sh、nohup 等
# 服务无法放到后台运行，该脚本执行结束，两个进程也会被杀掉
${BASE_PATH}/netcheck/endpoint/EndpointWatchdog.sh ${BASE_PATH} &
${BASE_PATH}/netcheck/tqclient/tqclient.sh ${BASE_PATH}

echo "start success"
