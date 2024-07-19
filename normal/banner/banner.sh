#/usr/bin/env bash

# usage: banner.sh [banner_type] [port] [banner]

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z "$1" ]; then
  banner_type=ssh
else
  banner_type=$1
fi

case "$banner_type" in
	ssh)
    BANNER_FILE="$SCRIPT_DIR/ssh-banner-list.txt"
		;;
	ftp)
    BANNER_FILE="$SCRIPT_DIR/ftp-banner-list.txt"
		;;
	smtp)
    BANNER_FILE="$SCRIPT_DIR/smtp-banner-list.txt"
		;;
esac

if [ -z "$2" ]; then
  port=4343
else
  port=$2
fi

if [ -z "$2" ]; then
  if [ -s "$BANNER_FILE" ]; then
    banner=`shuf -n 1 $BANNER_FILE`
  else
    echo "no banner specified and no banner file exist"
  fi
else
  banner=$2
fi

echo "listen at $port and banner is $banner"
while : ; do echo -ne "$banner\n" | nc -lnvp $port; done
