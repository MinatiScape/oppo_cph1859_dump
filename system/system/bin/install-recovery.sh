#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:39961456:b636f019e7632e38b38386972660533a7920460e; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:10840944:f3bbb779d753d31d95bd244a4855cf2d79188d78 EMMC:/dev/block/platform/bootdevice/by-name/recovery b636f019e7632e38b38386972660533a7920460e 39961456 f3bbb779d753d31d95bd244a4855cf2d79188d78:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
