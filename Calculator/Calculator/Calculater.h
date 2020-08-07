//
//  CalculatorManager.h
//  Calculator
//
//  Created by zxf on 2020/8/6.
//  Copyright © 2020 zxf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 函数式编程
@interface Calculater : NSObject

@property(assign, nonatomic, readonly) NSInteger result;

- (Calculater *)calculate:(void(^)(NSInteger *))block;

- (BOOL)equal:(NSInteger(^)(void))block;

@end

NS_ASSUME_NONNULL_END
