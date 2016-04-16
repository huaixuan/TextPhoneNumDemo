//
//  TextPhoneNum.h
//  MMGStore
//
//  Created by zhouxiang on 15/9/24.
//  Copyright (c) 2015年 zhouxiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TextPhoneNum : NSObject


/**验证手机号码格式*/
+ (BOOL)isMobileNum:(NSString *)mobileNum;

@end
