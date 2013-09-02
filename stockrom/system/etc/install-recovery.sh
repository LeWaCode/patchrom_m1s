#!/system/bin/sh
sysid=`cat /proc/cmdline | grep system1`
if [ -n "$sysid" ]; then
sysid=1
fi
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:6590464:60e6539df30a3497a9ea4004cc68da27e35c77c4; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot$sysid:5376000:6c60c89858d21a33f158c7091ff05be4ee3ac884 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 60e6539df30a3497a9ea4004cc68da27e35c77c4 6590464 6c60c89858d21a33f158c7091ff05be4ee3ac884:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
