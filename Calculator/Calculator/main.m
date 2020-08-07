//
//  main.m
//  Calculator
//
//  Created by zxf on 2020/8/6.
//  Copyright © 2020 zxf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculater.h"
#import "Calculator.h"
#import "NSObject+Calculation.h"

#import "Calculater.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        /*
         CGFloat result = [calculator makeCalculation:^(CalculateMaker *make){
            make.add(1).sub(2).mul(3).div(4);
         }];
         */
        
        Calculator *c = Calculator.new;
        c.add(1).add(2).add(3);
        
        NSLog(@"result = %ld", c.result);
        
        NSInteger result = [NSObject makeCalculation:^(Calculator *make) {
            make.add(2).add(4).add(6);
        }];
        
       NSLog(@"result = %ld", result);
        Calculater *calculater = Calculater.new;
        BOOL equal = [[calculater calculate:^(NSInteger * _Nonnull result) {
            *result += 2;
            *result *= 6;
        }] equal:^NSInteger{
            return 3 * 4;
        }];
        
        NSLog(@"Calculater result = %ld, is equal: %d", calculater.result, equal);

    }
    return 0;
}
