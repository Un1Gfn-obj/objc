// https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/DefiningClasses/DefiningClasses.html

#ifndef LOREMIPSUM_H
#define LOREMIPSUM_H

#import <Foundation/Foundation.h> // NSObject

// https://en.wikipedia.org/wiki/Objective-C#Interface
@interface LoremIpsum : NSObject {
  // instance variables
  int var;
}

// nm obj/hello.obj/LoremIpsum.m.o | grep LoremIpsum
// plus sign (+) class method (_c_)
// t _c_LoremIpsum__addAddend1_Addend2_
// t _c_LoremIpsum__getClassName
// t _c_LoremIpsum__inc_
// t _c_LoremIpsum__subMinuend_Subtrahend_
// minus sign (-) instance method (_i_)
// t _i_LoremIpsum__getli

// + classMethod0;
// +(const char*)getClassName;
+(void)classTest;
+(int)subMinuend:(int)x Subtrahend:(int)y;
+(int)addAddend1:(int)x Addend2:(int)y;
+(int)inc:(int)n;

// - instanceMethod0;
-(void)instanceTest;
-(LoremIpsum*)initWithVar:(int)v;
-(LoremIpsum*)appendToVar:(int)a;
-(int)getVar;
-(void)showVar;
// - (void)instanceMethod1With1Parameter:(int)param1_varName;
// - (void)instanceMethod2With2Parameters:(int)param1_varName
//                        param2_callName:(int)param2_varName;

@end

#endif
