//
//  NSObject+Calculation.m
//  Calculator
//
//  Created by zxf on 2020/8/7.
//  Copyright © 2020 zxf. All rights reserved.
//

#import "NSObject+Calculation.h"

@implementation NSObject (Calculation)

+ (NSInteger)makeCalculation:(void (^)(Calculator *make))block {
    
    Calculator *make = Calculator.new;
    block(make);
    return make.result;
}

@end
