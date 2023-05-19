#/bin/bash

BASE_PATH=$(dirname $(
  cd $(dirname "$0")
  pwd
))

sh ${BASE_PATH}/soul-netcheck/endpoint/EndpointWatchdog.sh ${BASE_PATH}
sh ${BASE_PATH}/soul-netcheck/tqclient/tqclient.sh ${BASE_PATH}
