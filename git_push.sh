#!/bin/bash

read -p "Enter commit message (leave empty for default): " message

if [[ -z "$message" ]]; then
    message="Mundo的默认提交信息"
fi

git add .

git commit -m "$message"

git push