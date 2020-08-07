//
//  Calculator.m
//  Calculator
//
//  Created by zxf on 2020/8/7.
//  Copyright © 2020 zxf. All rights reserved.
//

#import "Calculator.h"

@interface Calculator ()

@property(assign, nonatomic) NSInteger result;

@end

@implementation Calculator

- (Calculator *(^)(NSInteger))add {
    
    return ^(NSInteger value) {
        self.result += value;
        return self;
    };
}

- (void)dealloc {
    NSLog(@"dealloc");
}

@end
