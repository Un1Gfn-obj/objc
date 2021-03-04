#include <assert.h>
#include <stdbool.h>
#include <sys/time.h>
#include <unistd.h> // getpid() sleep()

#import <Foundation/Foundation.h>
#import "./LoremIpsum.h"

static void timer(){
  static bool first=true;
  static struct timeval begin={};
  if(first){
    first=false;
  }else{
    struct timeval end={};
    assert(0==gettimeofday(&end,&(struct timezone){}));
    if(end.tv_usec<begin.tv_usec){
      end.tv_usec+=1000000;
      --end.tv_sec;
    }
    printf("%ld.%06ld\n",
      end.tv_sec -begin.tv_sec ,
      end.tv_usec-begin.tv_usec
    );
    // memcpy(begin,end,sizeof(struct timeval));
  }
  assert(0==gettimeofday(&begin,&(struct timezone){}));
}

static void bench(){

  const int n=100000000;
  timer();

  // Inefficient
  for(int i=0;i<n;++i){
    @autoreleasepool{
      [[[LoremIpsum alloc]init]autorelease];
      // [[[LoremIpsum alloc]init]dealloc];
    }
  }
  timer();

  // Efficient
  @autoreleasepool{
    for(int i=0;i<n;++i){
      [[[LoremIpsum alloc]init]autorelease];
      // [[[LoremIpsum alloc]init]dealloc];
    }
  }
  timer();

}

static void test(){

  // NSString *s=[[NSString alloc]init];
  // NSString *const s=@"Executing";
  // NSString *s=[[NSString alloc] initWithCString:"Lorem Ipsum" encoding:NSASCIIStringEncoding];
  // NSLog(s);
  // [s dealloc];

  SEL _cmd=NULL;
  NSObject *self=NULL;
  // id bar=0;

  @autoreleasepool{
    NSAssert(false,@"deliberate crash");
  }

}

static void objc(){

  // puts(_c_LoremIpsum__getClassName());
  puts([LoremIpsum getClassName]);
  printf("%d\n",[LoremIpsum inc:720]);
  printf("%d\n",[LoremIpsum addAddend1:800 Addend2:31]);
  printf("%d\n",[LoremIpsum subMinuend:1010 Subtrahend:9]);
  printf("\n");

  // https://developer.apple.com/documentation/objectivec/nsobject?language=objc
  // +(instancetype)alloc inherited from NSObject
  // LoremIpsum *li0=[[LoremIpsum alloc]init];
  // LoremIpsum *li1=[LoremIpsum new];
  // memcmp...
  // [li0 showVar];
  // [li1 showVar];
  // printf("\n");
  // [li0 dealloc];
  // [li1 dealloc];

  // @autoreleasepool{li2=[[LoremIpsum alloc]initWithVar:-1];} // Crash
  // @autoreleasepool{NSCAssert(!li2,@"alloc fail");} // Crash
  LoremIpsum *li2=[[LoremIpsum alloc]initWithVar:1100];
  assert(li2);
  [[li2 appendToVar:11]showVar];
  printf("\n");
  [li2 dealloc];

}

int main(){

  printf("\n");

  // bench();
  test();
  // objc();

  printf("\n");
  return 0;

}
