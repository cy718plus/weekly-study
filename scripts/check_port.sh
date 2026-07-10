#!/bin/bash

echo "请输入要检查的端口号："
read port

if [[ -z "$port" ]]; then
    echo "错误：端口号不能为空"
    exit 1
fi

if ! [[ "$port" =~ ^[0-9]+$ ]]; then
    echo "错误：端口号必须是数字"
    exit 1
fi
if (( port < 1 || port > 65535 )); then
    echo "错误：端口号必须在 1 到 65535 之间"
    exit 1
fi

echo "正在检查端口 $port ..."

if ss -lnt | grep -q ":$port "; then
    echo "端口 $port 已被占用"
else
    echo "端口 $port 未被占用"
fi

