//
//  ViewController.m
//  UIImageLableButton
//
//  Created by zhangdong on 16/8/24.
//  Copyright © 2016年 __Nature__. All rights reserved.
//

#import "ViewController.h"
#import "UIImageLabelButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageLabelButton *btn = [UIImageLabelButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(50, 50, 50, 20)];
    [btn setTitle:@"详情" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"teacher_right_arrow"] forState:UIControlStateNormal];
    btn.imageLabelBtnType = UIImageLabelButtonTypeLeft;
    [btn.titleLabel setFont:[UIFont systemFontOfSize:16]];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    btn.titleImageSpace = 10;
    [self.view addSubview:btn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
