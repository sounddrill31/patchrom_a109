#!/system/bin/sh


LOG_TAG="BOOT_COPY"

# the log function
logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$@"
}

logi "=========== Before preinstall MAd folders"

if [ ! -e /data/mdcall ]
then
    logi "=========== Do rel preinstall MAd folders"
    cp -rvf /system/vendor/data/MAd/mdcall /data
    #busybox chown system.system /data/mdcall/mAdCall
    busybox chmod -R 0777 /data/mdcall/mAdCall
fi
logi "=========== End preinstall MAd folders"
