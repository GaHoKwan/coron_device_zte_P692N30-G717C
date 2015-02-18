#/bin/bash
echo "in $0"
OUT_DIR=/home/jay/baidurom/mtk42/devices/G717c/out/merged_target_files

echo 'romjd.rom.id=2a7a632b-be32-40b8-b779-a9fda8080e6c' >> $OUT_DIR/SYSTEM/build.prop
echo 'romjd.rom.version=2.3.66.66' >> $OUT_DIR/SYSTEM/build.prop
echo 'romjd.rom.version.code=1' >> $OUT_DIR/SYSTEM/build.prop
echo 'romjd.cp.list=com.chaozh.iReaderFree:98127D058CBD88018F3ADA43D37C5585;com.baidu.BaiduMap:6D9AC2A282B85326BAEA648182147A54;' >> $OUT_DIR/SYSTEM/build.prop

