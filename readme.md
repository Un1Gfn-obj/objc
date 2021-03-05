Apple
*   [Apple Developer Documentation Archive](https://developer.apple.com/library/archive/navigation/) -
[**Programming with Objective-C**](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html)
*   [Apple Developer Documentation](https://developer.apple.com/documentation/technologies) -
[Foundation](https://developer.apple.com/documentation/foundation)

Append `?language=occ` to `https://developer.apple.com/documentation/*`

[GNUstep](http://www.gnustep.org/)
*   [expdocs](http://www.gnustep.org/experience/documentation.html) - [mailinglist](http://www.gnustep.org/information/gethelp.html)
*   [devdocs](http://www.gnustep.org/developers/documentation.html) -
[gnustep.it](http://www.gnustep.it/) -
[nicola](http://www.gnustep.it/nicola/index.html) -
[minitutorials](http://www.gnustep.it/nicola/Tutorials/index.html) -
[GNUmakefile](http://www.gnustep.it/nicola/Tutorials/WritingMakefiles/index.html)

[GNUstepWiki](http://wiki.gnustep.org/index.php/Main_Page)
*   [UG](http://wiki.gnustep.org/index.php/User_Guides)
*   [architeture](http://wiki.gnustep.org/index.php/GNUstep_Suite)

[GitHub](https://github.com/gnustep)
*   gnustep-make -
[tools-make](https://github.com/gnustep/tools-make)
*   gnustep-libobjc2 -
[libobjc2](https://github.com/gnustep/libobjc2)
*   gnustep-base -
[Foundation Kit](https://en.wikipedia.org/wiki/Foundation_Kit) -
[Foundation Framework](https://developer.apple.com/documentation/foundation)
*   gnustep-corebase -
[libs-corebase](https://github.com/gnustep/libs-corebase) -
[Core Foundation](https://en.wikipedia.org/wiki/Core_Foundation)
*   gnustep-gui -
[Application Kit](https://en.wikipedia.org/wiki/Application_Kit) -
[AppKit Framework](https://developer.apple.com/documentation/appkit)
*   [gnustep-back](http://wiki.gnustep.org/index.php/Back) -
[Backend](http://wiki.gnustep.org/index.php/Backend) -
[GTK theme](https://github.com/gnustep/plugins-themes-Gtk)

https://cocoadev.github.io/ChooseYourOwnPrefix/
*   CA - Core Animation
*   CG - CoreGraphics (Quartz) 
*   NS - NeXT/Sun

---

```bash
source /usr/share/GNUstep/Makefiles/GNUstep.sh
echo "$GNUSTEP_MAKEFILES"
```

[obj method:argument];

```plain
$ nm ./obj/hello.obj/hello.m.o | grep msg
                 U objc_msg_lookup
```

dynamic binding
SEL - method identified by a selector - unique id for each message name - NUL-terminated string\
IMP - method resolved to C method pointer implementing it

class interface - header.h\
class implementation - code.m

NSObject +(instancetype)alloc
1. allocate memory to hold instance variables
1. zero out instance variables
1. turn the memory into an instance of the class

```objc
NULL=(void \*)0;
nil=(id)0;
Nil=(Class)0;
NSNull=[NSNull null];
```

[NS(Int)Number](https://developer.apple.com/documentation/foundation/nsnumber?language=objc)



