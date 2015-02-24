# All variables and this file are optional, if they are not present the PG and the
# makefiles will try to parse the correct values from the file system.
#
# Variables that specify exclusions can use % as a wildcard to specify that anything in
# that position will match. A partial path can also be specified to, for example, exclude
# a whole folder from the parsed paths from the file system
#
# Variables can be specified using = or +=
# = will clear the contents of that variable both specified from the file or the ones parsed
# from the file system
# += will add the values to the previous ones in the file or the ones parsed from the file 
# system
# 
# The PG can be used to detect errors in this file, just create a new project with this addon 
# and the PG will write to the console the kind of error and in which line it is

meta:
	ADDON_NAME = ofxKinect2
	ADDON_DESCRIPTION = Kinect2 wrapper for openFrameworks
	ADDON_AUTHOR = Sadam Fujioka, Robert Xiao
	ADDON_TAGS = "computer vision" "3D sensing" "kinect"
	ADDON_URL = https://github.com/nneonneo/ofxKinect2

common:
	# KINECTSDK20_DIR variable is added by the Kinect 2.0 SDK installer
	ADDON_INCLUDES += $(KINECTSDK20_DIR)/inc
	ADDON_LIBS += $(KINECTSDK20_DIR)/Lib/x86/Kinect20.lib
