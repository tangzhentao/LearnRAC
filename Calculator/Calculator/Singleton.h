//
//  Singleton.h
//  Calculator
//
//  Created by zxf on 2020/8/13.
//  Copyright © 2020 zxf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject

+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
