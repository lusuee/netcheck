import time


if __name__ == "__main__":
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        # 捕获键盘中断信号 (Ctrl+C) 时退出程序
        pass
