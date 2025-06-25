#!/bin/bash
# =================================================
#  V6V4-Hands-up 创世引导脚本 (Launcher)
#  使命：准备环境，召唤主脚本
# =================================================

echo "正在与指挥官的星舰建立通讯，请稍候..."
echo "正在检查通讯工具 (curl)..."

# 检查curl是否存在，不存在则自动安装
if ! command -v curl &> /dev/null; then
    echo "未找到通讯工具，正在紧急安装..."
    apt-get update -y > /dev/null 2>&1
    apt-get install -y curl > /dev/null 2>&1
    echo "通讯工具安装完毕！"
fi

echo "环境准备就绪！正在召唤“双剑合璧”主程序..."
echo "====================================================================="

# 使用curl召唤并执行主脚本
bash <(curl -sL https://raw.githubusercontent.com/zhangcaiduo/V6V4-Hands-up/main/init-v6-server.sh)
