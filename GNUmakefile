# make print-gnustep-make-help
# make clean all run
# make messages=yes clean all run

# Manual
# https://stackoverflow.com/a/31680948
# gcc `gnustep-config --objc-flags` *.m -lgnustep-base -lobjc

include $(GNUSTEP_MAKEFILES)/common.make

# Common
CXX:=/bin/false
CPP:=/bin/false
RUNTIME_VERSION:=gnustep-2.0
# ALL_OBJCFLAGS:=-Wall -Wextra $(ALL_OBJCFLAGS) -Wall -Wextra
# ALL_OBJCFLAGS+=-Wall -Wextra

#  gcc  w/ gcc-libs libobjc.so.4.0.0
# Dead @autoreleasepool
# https://gcc.gnu.org/onlinedocs/gcc/Objective-C-and-Objective-C_002b_002b-Dialect-Options.html

# clang w/ gcc-libs libobjc.so.4.0.0
CC:=/usr/bin/clang-11

# clang w/ libobjc2 libobjc.so.4.6
# /home/darren/.cache/yay/libobjc2 not ready for use
# gnustep-base-libobj2 variant of gnustep-base is required
# AUXILIARY_FRAMEWORK_DIRS:=-L/usr/lib/libobjc2
# ALL_OBJCFLAGS:=$(ALL_OBJCFLAGS) -fobjc-runtime=gnustep-2.0

TOOL_NAME:=hello
hello_OBJC_FILES:=hello.m LoremIpsum.m

include $(GNUSTEP_MAKEFILES)/tool.make

# $(info *** ALL_OBJCFLAGS is $(ALL_OBJCFLAGS))

run: obj/$(TOOL_NAME)
# 	@/bin/time -f "%E\n" ./obj/$(TOOL_NAME)
	@./obj/$(TOOL_NAME)

memcheck: obj/$(TOOL_NAME)
	@valgrind -s $<

memusage: obj/$(TOOL_NAME)
	@/usr/bin/memusage $<

# Define after include directives in case of being overwritten
SYSTEM_INCLUDES:=$(SYSTEM_INCLUDES) -I/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/include/ # <objc/objc.h>

# FOO_FLAGS depend on SYSTEM_INCLUDES
# grep -rhi -oe '[a-z_]*all[a-z_]*flag[a-z_]*' /usr/share/GNUstep/ | sort | uniq
# ALL_CPLISTFLAGS
# ALL_CPPFLAGS
# ALL_JAVACFLAGS
# ALL_JAVADOCFLAGS
# ALL_JAVAHFLAGS
# ALL_LDFLAGS
# ALL_OBJCCFLAGS
# ALL_OBJCFLAGS
# ALL_CFLAGS:=-Wall -Wextra $(ALL_CFLAGS)
ALL_OBJCFLAGS:=-Wall -Wextra $(ALL_OBJCFLAGS) -U_FORTIFY_SOURCE -UNS_BLOCK_ASSERTIONS

# libobjc2 needed since gcc-objc lacks <blocks_runtime.h>
# https://github.com/gnustep/libobjc2/blob/master/objc/blocks_runtime.h
# ALL_OBJCFLAGS+=-fblocks

# make print-gnustep-make-objc-libs
# /usr/share/GNUstep/Makefiles/rules.make
# TARGET_SYSTEM_LIBS:=$(TARGET_SYSTEM_LIBS) $(shell pkg-config --libs libcrypto)
