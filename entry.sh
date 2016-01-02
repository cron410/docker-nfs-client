#! /bin/sh -e

#set -m

mkdir -p "$MOUNTPOINT"

rpcbind -f &
mount -t "$FSTYPE" -o "$MOUNT_OPTIONS" "$SERVER:$SHARE" "$MOUNTPOINT"
mount | grep nfs
#fg
while true; do sleep 1000; done
