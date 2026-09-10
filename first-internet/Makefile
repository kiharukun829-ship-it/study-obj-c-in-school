TARGET := iphone:clang:6.1:6.0

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = first-internet

first-internet_FILES = main.m FIRootViewController.m
first-internet_FRAMEWORKS = UIKit CoreGraphics WebKit
first-internet_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/application.mk
