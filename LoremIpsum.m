#import "./LoremIpsum.h"

// https://en.wikipedia.org/wiki/Objective-C#Implementation
@implementation LoremIpsum

// Class methods

+(const char*)getClassName {
  return "LoremIpsum";
  // static const char* name="LoremIpsum";
  // return name;
}

+(int)subMinuend:(int)m Subtrahend:(int)s{
  return m-s;
}

+(int)addAddend1:(int)x Addend2:(int)y{
  return x+y;
}

+(int)inc:(int)n{
  return [self addAddend1:n Addend2:1];
}

// Instance methods

-(LoremIpsum*)initWithVar:(int)v{
  @autoreleasepool{NSAssert(v>=0,@"negative var");}
  var=v;
  return self;
}

-(void)showVar{
  printf("%d\n",var);
}

-(LoremIpsum*)appendToVar:(int)a{
  var+=a;
  return self;
}

//

@end
