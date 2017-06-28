#!/bin/bash -ex
declare -a errors
port=80
errors='netstat -aon | grep "80"'
echo $errors
if [ ${#errors[@]} -gt 0 ]; then
    echo "$port is used by $errors "
    exit 1
fi
