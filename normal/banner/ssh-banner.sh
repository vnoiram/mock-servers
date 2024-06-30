#/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z "$1" ]; then
  port=4343
else
  port=$1
fi

if [ -z "$2" ]; then
  banner=`shuf -n 1 $SCRIPT_DIR/ssh-banner-list.txt`
else
  banner=$2
fi

echo "listen at $port and banner is $banner"
while : ; do echo -ne "$banner\n" | nc -lnvp $port; done
