#!/bin/bash

read -p "Enter commit message: " message

if [[ -z "$message" ]]; then
    message="默认的更新信息"
fi

git add .

git commit -m "$message"

git push
