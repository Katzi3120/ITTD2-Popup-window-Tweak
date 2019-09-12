DEBUG = 1 #should create debug or not
ARCHS = arm64 #archs Lol

include $(THEOS)/makefiles/common.mk


TWEAK_NAME = ITTDHacks

ITTDHacks_FILES = Tweak.xm 
ITTDHacks_FRAMEWORKS = UIKit #UIKit for alertview

ITTDHacks_LIBRARIES += substrate 


include $(THEOS_MAKE_PATH)/tweak.mk
