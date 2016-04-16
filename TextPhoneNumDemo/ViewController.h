//
//  ViewController.h
//  TextPhoneNumDemo
//
//  Created by zhouxiang on 15/9/29.
//  Copyright (c) 2015年 zhouxiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>{
    
    //输入手机号码：
    __weak IBOutlet UITextField *_phoneTextField;
    
    //手机号码
    __weak IBOutlet UILabel *_phoneLabel;
    
    //所属运营商
    __weak IBOutlet UILabel *_operatorLabel;
    //信息展示视图
    __weak IBOutlet UIView *_infoView;
    
    //检测按钮
    __weak IBOutlet UIButton *_testButtton;
    
    
}

//检测手机号码
- (IBAction)textAction:(id)sender;

@end

