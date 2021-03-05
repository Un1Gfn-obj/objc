#include <assert.h>
// #include <openssl/crypto.h>
#include <stdbool.h>
#include <sys/time.h>
#include <unistd.h> // getpid() sleep()

#import <Foundation/Foundation.h>
#import "./LoremIpsum.h"

/*static void timer(){
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
}*/

/*static void promptproc(){
  static char resolved_path[PATH_MAX]={};
  if(!resolved_path[0])
    assert(resolved_path==realpath("/proc/self/status",resolved_path));
  printf("$ cat %s ",resolved_path);
  fflush(stdout);
  getchar();
}*/

/*static void bench(){

  const int n=100000000;
  // timer();

  // Slow but Low memory foorprint
  for(int i=0;i<n;++i){
    @autoreleasepool{
      [[[LoremIpsum alloc]init]autorelease];
      // [[[LoremIpsum alloc]init]dealloc];
    }
  }
  promptproc();
  // timer();

  // Fast but High memory foorprint
  @autoreleasepool{
    for(int i=0;i<n;++i){
      [[[LoremIpsum alloc]init]autorelease];
      // [[[LoremIpsum alloc]init]dealloc];
    }
    promptproc();
  }
  // timer();

}*/

/*static void test(){

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

}*/

/*static void hexdump(const unsigned char *const buf,const long sz){
  for(long i=0;i<sz;++i)
    printf("%02X ",)
}*/

static void objc(){

  // https://github.com/gnustep/libs-corebase/blob/master/Headers/CoreFoundation/CFDictionary.h
  // CFDictionaryRef cfr={};

  @autoreleasepool{
    NSArray *array = @[@"Hello, World!", @42];
    NSNumber *o=[array objectAtIndex:1];
    NSLog(@"%@",NSStringFromClass([o class]));
    puts(NSStringFromClass([o class]).UTF8String);
    puts([NSStringFromClass([o class]) UTF8String]);
    puts([NSStringFromClass([o class]) cStringUsingEncoding:NSASCIIStringEncoding]);

    // https://developer.apple.com/documentation/foundation/nsnumber?language=objc
    // printf("%lu\n",sizeof(int));
    // printf("%lu\n",sizeof(NSInteger));
    /*static_*/assert(sizeof(int)==32/8);
    /*static_*/assert(sizeof(NSInteger)==64/8);
    printf("%d\n",[o intValue]);
    printf("%ld\n",[o integerValue]);
    printf("%d\n",o.intValue);
    printf("%ld\n",o.integerValue);

  }

  assert([LoremIpsum superclass]==[NSObject class]&&
         [LoremIpsum isSubclassOfClass:[NSObject class]]);
  // @autoreleasepool{puts(NSStringFromClass([LoremIpsum class]).UTF8String);}
  // printf("%d\n",[LoremIpsum inc:720]);
  // printf("%d\n",[LoremIpsum addAddend1:800 Addend2:31]);
  // printf("%d\n",[LoremIpsum subMinuend:1010 Subtrahend:9]);
  // printf("\n");

  // // https://developer.apple.com/documentation/objectivec/nsobject?language=objc
  // // +(instancetype)alloc inherited from NSObject
  // LoremIpsum *li0=[[LoremIpsum alloc]init], *li1=[LoremIpsum new];
  // assert(0==memcmp(li0,li1,sizeof(LoremIpsum))&&
  //        0==[li0 getVar]&&
  //        0==[li1 getVar]&&);
  // // printf("%ld\n",sizeof(LoremIpsum));
  // // {char *s=OPENSSL_buf2hexstr((unsigned char*)li0,sizeof(LoremIpsum));puts(s);free(s);}
  // // {char *s=OPENSSL_buf2hexstr((unsigned char*)li1,sizeof(LoremIpsum));puts(s);free(s);}
  // // [li0 showVar];[li1 showVar];
  // // printf("\n");
  // [li0 dealloc];
  // [li1 dealloc];

  // @autoreleasepool{li2=[[LoremIpsum alloc]initWithVar:-1];} // Crash
  // @autoreleasepool{NSCAssert(!li2,@"alloc fail");} // Crash
  // LoremIpsum *li2=[[LoremIpsum alloc]initWithVar:1100];
  // assert(li2);
  // [[li2 appendToVar:11]showVar];
  // printf("\n");
  // [li2 dealloc];

  [LoremIpsum classTest];
  LoremIpsum *li3=[LoremIpsum new];
  [li3 instanceTest];

}

int main(){

  puts("");
  // printf("%d\n",getpid());
  // getchar();

  // bench();

  // test();

  objc();

  printf("\n");
  return 0;

}
