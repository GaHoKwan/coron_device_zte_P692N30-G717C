#!/system/bin/sh
BUSYBOX="/system/xbin/busybox"


	if [ ! -e /cache/swap.img ]; 
	then
		$BUSYBOX dd if=/dev/zero of=/cache/swap.img bs=1024 count=393216
		$BUSYBOX mkswap /cache/swap.img
		$BUSYBOX touch /data/cache.swap.finish;
	fi
		$BUSYBOX losetup /dev/block/loop7 /cache/swap.img
		$BUSYBOX touch /data/cache.swap.finish
		#$BUSYBOX swapon /cache/swap
		#$BUSYBOX echo 75 >/proc/sys/vm/swappiness
		$BUSYBOX swapon /dev/block/loop7 >/data/cache.swap.finish
sync;
