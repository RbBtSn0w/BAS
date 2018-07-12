//
//  ViewController.m
//  bas
//
//  Created by Snow.y.wu on 2018/7/12.
//  Copyright © 2018 Snow.y.wu. All rights reserved.
//

#import "ViewController.h"
#import <Hello/Hello.h>
#import <World/World.h>


uint64_t dispatch_benchmark(size_t count, void (^block)(void));


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HelloObjC *ho = [[HelloObjC alloc] init];
    
    NSLog(@"HelloObjC %@", [ho debugDescription]);
    
    WorldObjc *wo = [[WorldObjc alloc] init];
    
    uint64_t mark11 = dispatch_benchmark(1, ^{
        NSLog(@"HelloObjC %@", [wo debugDescription]);
    });
    
    uint64_t mark12 =dispatch_benchmark(1, ^{
        NSLog(@"attrisOfSubInfo %@", attrisOfSubInfo());
    });
    
    
    uint64_t mark = dispatch_benchmark(1000, ^{
        NSLog(@"HelloObjC %@", [wo debugDescription]);
    });
    
    uint64_t mark2 =dispatch_benchmark(1000, ^{
        NSLog(@"attrisOfSubInfo %@", attrisOfSubInfo());
    });
    
    
    NSLog(@"NSLog(HelloObjC, [wo debugDescription]) : %llu ns", mark11);
    NSLog(@"NSLog(attrisOfSubInfo, attrisOfSubInfo()) : %llu ns", mark12);
    
    NSLog(@"NSLog(HelloObjC, [wo debugDescription]) : %llu ns", mark);
    NSLog(@"NSLog(attrisOfSubInfo, attrisOfSubInfo()) : %llu ns", mark2);
    
}


@end
