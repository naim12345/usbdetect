#!/bin/bash

if [ "`lsblk -o name | grep sdc1`" ];
then
          notify-send"USB mounted"
          sleep 3s
          sudo mount /dev/sdc1
          cd /mnt
          CurrentDate=`date`
          echo "The USB was unmounted at $CurrentDate">Date.txt
          notify-send "USB Unmounted"
          sudo umount /dev/sdc1
fi

