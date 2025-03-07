#!/bin/bash

read -p "Enter commit message: " message

if [[ -z "$message" ]]; then
    message="使用自动化脚本进行默认更新"
fi

git add .

git commit -m "$message"

git push
