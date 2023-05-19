# 绕过准入软件检查

## endpoint

关闭 DLP 监控，并绕过准入软件检测，保证关闭 DLP 后仍可以联网

### Steps

1. 关闭后台运行权限
   ![](img/1.png)
2. 编译
   ```python
   PyInstaller EndpointWatchdog.py
   ```

## tqclient

关闭杀毒，并绕过准入软件检测。

### Steps

1. 关闭后台运行权限
  ![](img/2.png)
2. 编译
   ```python
   PyInstaller tqclient.py
   ```

## Mac 自启动 

### TODO 加载 plist 实现

通过添加 plist 实现

> The plist file must be owned by root and group wheel as rw only for owner. So root:wheel 600

1. 修改 plist 权限
```shell
sudo chown root:wheel /path/to/plist/file.plist

sudo chmod 644 /path/to/plist/file.plist
```

2. 修改 plist 中脚本路径，替换`/Users/a1021500519/Documents/github/soul-netcheck/netcheck.sh`

3. 加载 plist

```shell
sudo launchctl load /Library/LaunchDaemons/soul.netcheck.plist
```