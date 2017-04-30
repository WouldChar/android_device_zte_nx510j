#!/system/bin/sh

if [ ! -d "/data/tp" ]; then
    mkdir /data/tp
    chmod 0775 /data/tp
    chown system:system /data/tp
else
    rm /data/tp/*
fi

# ==============================================================================
# Goodix GT915L

if [ -e "/sys/bus/i2c/devices/2-005d/ic_ver" ]; then
	ln -s /sys/bus/i2c/devices/2-005d/ic_ver /data/tp/ic_ver
fi

if [ -e "/sys/bus/i2c/devices/2-005d/wakeup_gesture" ]; then
	chown system:system /sys/bus/i2c/devices/2-005d/wakeup_gesture
	ln -s /sys/bus/i2c/devices/2-005d/wakeup_gesture /data/tp/easy_wakeup_gesture
fi

if [ -e "/sys/gt1x_test/openshort" ]; then
	ln -s /sys/gt1x_test/openshort /data/tp/ic_detect
fi

if [ -e "/sys/bus/i2c/devices/2-005d/touch_mode" ]; then
	chown system:system /sys/bus/i2c/devices/2-005d/touch_mode
	ln -s /sys/bus/i2c/devices/2-005d/touch_mode /data/tp/touch_mode
fi

if [ -e "/sys/bus/i2c/devices/2-005d/keypad_enable" ]; then
	chown system:system /sys/bus/i2c/devices/2-005d/keypad_enable
	ln -s /sys/bus/i2c/devices/2-005d/keypad_enable /data/tp/keypad_enable
fi
