import common
import edify_generator

def MountSystem(info):
	edify = info.script
	for i in xrange(len(edify.script)):
		if "unmount" in edify.script[i]:
			edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/mmcblk0p5", "/system");'
			return

def FormatSystem(info):
	edify = info.script
	for i in xrange(len(edify.script)):
		if "format(" in edify.script[i] and "system" in edify.script[i]:
			edify.script[i] = 'delete_recursive("/system");'
			return

def FullOTA_InstallEnd(info):
	FormatSystem(info)
	MountSystem(info)
