ARCHS = arm64 arm64e
TARGET = iphone:latest:13.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TxC_TikTok
TxC_TikTok_FILES = Tweak.x
TxC_TikTok_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk