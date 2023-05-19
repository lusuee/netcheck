# /bin/bash

# nohup ${BASE_PATH}/dist/EndpointWatchdog/EndpointWatchdog >/dev/null 2>&1 &
nohup $1/soul-netcheck/dist/EndpointWatchdog/EndpointWatchdog &
