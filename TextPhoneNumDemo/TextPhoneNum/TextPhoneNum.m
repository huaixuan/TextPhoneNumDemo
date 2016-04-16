//
//  TextPhoneNum.m
//  MMGStore
//
//  Created by zhouxiang on 15/9/24.
//  Copyright (c) 2015年 zhouxiang. All rights reserved.
//

#import "TextPhoneNum.h"

@implementation TextPhoneNum


/**验证手机号码格式（如果你仅仅需要判断手机号码格式是否正确）*/
+ (BOOL)isMobileNum:(NSString *)mobileNum;
{
    /**
     * 手机号码
     * 移动：134/135/136/137/138/139/150/151/152/157/158/159/182/183/184/187/188/147/178
     * 联通：130/131/132/155/156/185/186/145/176
     * 电信：133/153/180/181/189/177
     */
    NSString * MOBILE = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    
    
    /**
     10         * 中国移动：China Mobile
     11         * 134/135/136/137/138/139/150/151/152/157/158/159/182/183/184/187/188/147/178
     12         */
    NSString * CM = @"^((13[4-9])|(147)|(15[0-2,7-9])|(178)|(18[2-4,7-8]))//d{8}|(1705)//d{7}$";
    
    /**
     15         * 中国联通：China Unicom
     16         * 130/131/132/155/156/185/186/145/176
     17         */
    NSString * CU = @"^((13[0-2])|(145)|(15[5-6])|(176)|(18[5,6]))//d{8}|(1709)//d{7}$";
    
    /**
     20         * 中国电信：China Telecom
     21         * 133/153/180/181/189/177
     22         */
    NSString * CT =@"^((133)|(153)|(177)|(18[0,1,9]))\\d{8}$";
    
    
    /**
     25         * 大陆地区固话及小灵通
     26         * 区号：010,020,021,022,023,024,025,027,028,029
     27         * 号码：七位或八位
     28         */
    NSString * PHS = @"^0(10|2[0-5789]|\\d{3})\\d{7,8}$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    NSPredicate *regextestphs = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", PHS];
    
    
            if (([regextestmobile evaluateWithObject:mobileNum] == YES)
                || ([regextestcm evaluateWithObject:mobileNum] == YES)
                || ([regextestct evaluateWithObject:mobileNum] == YES)
                || ([regextestcu evaluateWithObject:mobileNum] == YES)
                || ([regextestphs evaluateWithObject:mobileNum] == YES))
            {
                return YES;
            }
            else
            {
                return NO;
            }
    
    
}

@end
