//
//  WorldObjc.m
//  World
//
//  Created by Snow.y.wu on 2018/7/12.
//  Copyright © 2018 Snow.y.wu. All rights reserved.
//

#import "WorldObjc.h"
#import <ThirdPath/ThirdPath.h>
//#import "BoxTow.h"

@implementation WorldObjc


-(NSString *)debugDescription {
    
    Box *box = [Box new];
    NSLog(@"box %@",[box debugDescription]);
    
    
    NSLog(@"c function %@", aaBox());
    
    return @"WorldObjc 1111111";
}

@end



NSString * attrisOfSubInfo(void){
    return @"I am WorldObjc";
}
