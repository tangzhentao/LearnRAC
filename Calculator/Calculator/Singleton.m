//
//  Singleton.m
//  Calculator
//
//  Created by zxf on 2020/8/13.
//  Copyright © 2020 zxf. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *_sharedInstance = nil;

+ (instancetype)sharedInstance {
    
    static dispatch_once_t onceToken;
    NSLog(@"上面onceToken: %ld", onceToken);
    dispatch_once(&onceToken, ^{
        NSLog(@"里面onceToken: %ld", onceToken);
        _sharedInstance = [[self alloc] init];
    });
//    onceToken = 0; // 置0后，还会再次执行block
    return _sharedInstance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [super allocWithZone:zone];
    });
    return _sharedInstance;
}

@end
