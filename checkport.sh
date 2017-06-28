#!/bin/bash -ex
port=80
errors="$( netstat -aon | grep $port )"
echo $errors
# if [ ${#errors[@]} -gt 0 ]; then
if [ !-z  $errors ]; then
    echo "$port is used"
    exit 1
else
  echo "yes"
fi
