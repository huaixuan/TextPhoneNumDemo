//
//  ViewController.m
//  TextPhoneNumDemo
//
//  Created by zhouxiang on 15/9/29.
//  Copyright (c) 2015年 zhouxiang. All rights reserved.
//

#import "ViewController.h"
#import "TextPhoneNum.h"

/**暗红色背景*/
#define BACKGROUND_RED [UIColor colorWithRed:228/255.0 green:0/255.0 blue:44/255.0 alpha:1.0]
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array =@[_infoView,_testButtton];
    for (int i = 0; i<array.count; i++) {
        [self beautify:array[i]];
    }
    _phoneTextField.delegate = self;
    [_testButtton setTitle:@"\"嘿！孙子\",来点我啊" forState:UIControlStateNormal];

}

#pragma mark - UITextFieldDelegate
//当手机号达到11位时按钮可以操作
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if (range.location == 10) {
        _testButtton.backgroundColor = BACKGROUND_RED;
        _testButtton.userInteractionEnabled = YES;
        return YES;
    }
    else if (range.location < 10)  {
        
        _testButtton.backgroundColor = [UIColor lightGrayColor];
        _testButtton.userInteractionEnabled = NO;
        return YES;
    }
    else{
        return NO;
    }
}

//点击空白处隐藏键盘
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_phoneTextField resignFirstResponder];
}


#pragma mark - 检测手机号码
- (IBAction)textAction:(UIButton *)sender {
    
    if (!sender.selected) {
        _phoneLabel.text = [NSString stringWithFormat:@"手机号码：%@",_phoneTextField.text];
        if ([TextPhoneNum isMobileNum:_phoneTextField.text] == YES) {
            _operatorLabel.text = @"手机号码格式判断：正确";
        }else{
            _operatorLabel.text = @"手机号码格式判断：错误";
        }
    }
}

- (void)beautify:(UIView *)view{
    view.layer.masksToBounds = YES;
    view.layer.cornerRadius = 5.0f;
    view.layer.borderColor=[[UIColor lightGrayColor] CGColor];
    view.layer.borderWidth =0.5f;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
}

@end
