#!/bin/bash

# 日志目录
LOG_DIR="$HOME/test_logs"

# 保留天数
KEEP_DAYS=7

echo "日志目录：$LOG_DIR"
echo "保留天数：$KEEP_DAYS"

# 检查目录是否存在
if [[ ! -d "$LOG_DIR" ]]; then
    echo "错误：日志目录不存在"
    exit 1
fi

echo "以下文件将被检查："

find "$LOG_DIR" -type f -name "*.log" -mtime +$KEEP_DAYS

echo
read -p "确认删除这些旧日志吗？输入 yes 继续：" answer

if [[ "$answer" != "yes" ]]; then
    echo "操作已取消"
    exit 0
fi

find "$LOG_DIR" -type f -name "*.log" -mtime +$KEEP_DAYS -delete

echo "日志清理完成"
