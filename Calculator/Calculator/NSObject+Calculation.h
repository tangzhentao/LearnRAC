//
//  NSObject+Calculation.h
//  Calculator
//
//  Created by zxf on 2020/8/7.
//  Copyright © 2020 zxf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

NS_ASSUME_NONNULL_BEGIN

// 链式编程，仿masonry样式
@interface NSObject (Calculation)

+ (NSInteger)makeCalculation:(void (^)(Calculator *make))block;

@end

NS_ASSUME_NONNULL_END
