#!/bin/bash -ex
port=80
errors="$( netstat -aon | grep $port )"
echo $errors
if [ ${#errors[@]} -gt 0 ]; then
    echo "$port is used"
    exit 1
fi
