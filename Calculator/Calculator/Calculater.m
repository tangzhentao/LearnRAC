//
//  CalculatorManager.m
//  Calculator
//
//  Created by zxf on 2020/8/6.
//  Copyright © 2020 zxf. All rights reserved.
//

#import "Calculater.h"

@interface Calculater ()

@property(assign, nonatomic) NSInteger result;

@end

@implementation Calculater

- (Calculater *)calculate:(void (^)(NSInteger * _Nonnull))block {
    block(&_result);
    return self;
}

- (BOOL)equal:(NSInteger (^)(void))block {
    NSInteger result = block();
    
    return self.result == result;
}

@end
