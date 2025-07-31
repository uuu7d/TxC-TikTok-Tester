ARCHS = arm64 arm64e
TARGET = iphone:latest:14.0
INSTALL_TARGET_PROCESSES = TikTok

THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TxC_TikTok

TxC_TikTok_FILES = $(wildcard src/*.xm) $(wildcard src/*.m)
TxC_TikTok_CFLAGS = -fobjc-arc
TxC_TikTok_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 TikTok || :"