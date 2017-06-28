#!/bin/sh -ex
port=$1
#errors=$( netstat -aon | grep $port )

#echo $errors
if [ "$(lsof -i:$port)" ]; then # netstat -aon | grep $port #in linux
  echo "is in use"
  exit 1
else
  echo "not used "
fi
