//
//  ViewController.m
//  iOS10LabelAdjustFont
//
//  Created by Memebox on 16/9/11.
//  Copyright © 2016年 Justin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label = [[UILabel alloc]init];
    self.label.font = [UIFont systemFontOfSize:15];
    self.label.text = @"测试label";
    self.label.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    /*
     在iOS 10当中，当咱们用户将手机的字体大小进行了设置调整之后，那么app中设置相关代码字体也会跟着一起变化 ，支持常见一些字体UI控件 比如uilabel uibutton
     **/
    self.label.font =[UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    /*
     苹果官方明确的告诉你必须和  preferredFontForTextStyle 或者preferredFontForTextStyle:(NSString *)style compatibleWithTraitCollection 进行结合使用
     **/
    self.label.adjustsFontForContentSizeCategory = YES;
    [self.view addSubview:self.label];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
