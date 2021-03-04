# make print-gnustep-make-help
# make clean all run
# make messages=yes clean all run

# Manual
# https://stackoverflow.com/a/31680948/8243991
# gcc `gnustep-config --objc-flags` *.m -lgnustep-base -lobjc

include $(GNUSTEP_MAKEFILES)/common.make

# Common
CXX:=/bin/false
RUNTIME_VERSION:=gnustep-2.0
ALL_OBJCFLAGS:=-Wall -Wextra $(ALL_OBJCFLAGS)

#  gcc  w/ gcc-libs libobjc.so.4.0.0
# Dead @autoreleasepool
# https://gcc.gnu.org/onlinedocs/gcc/Objective-C-and-Objective-C_002b_002b-Dialect-Options.html

# clang w/ gcc-libs libobjc.so.4.0.0
CC:=/usr/bin/clang-11
SYSTEM_INCLUDES:=$(SYSTEM_INCLUDES) -I/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/ # <objc/objc.h>

# clang w/ libobjc2 libobjc.so.4.6
# /home/darren/.cache/yay/libobjc2 not ready for use
# gnustep-base-libobj2 variant of gnustep-base is required
# AUXILIARY_FRAMEWORK_DIRS:=-L/usr/lib/libobjc2
# ALL_OBJCFLAGS:=$(ALL_OBJCFLAGS) -fobjc-runtime=gnustep-2.0

TOOL_NAME:=hello
hello_OBJC_FILES:=hello.m LoremIpsum.m

include $(GNUSTEP_MAKEFILES)/tool.make

run: obj/$(TOOL_NAME)
# 	@echo
# 	@/bin/time -f "%E\n" ./obj/$(TOOL_NAME)
	@./obj/$(TOOL_NAME)
# 	@echo

memcheck: obj/$(TOOL_NAME)
# 	@echo
	@valgrind -s ./obj/$(TOOL_NAME)
# 	@echo

# $(info *** ALL_OBJCFLAGS is $(ALL_OBJCFLAGS))
