//
//  ViewController.m
//  JohnnyFengMaker
//
//  Created by warmjar on 2017/5/15.
//  Copyright © 2017年 warmjar. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = JFHexColor(0x27384b, 1);
    
    UIView* logo = [[UIView alloc] init];
    /*
     ff461f 朱砂
     9d2933 胭脂
     bf242a 银朱
     f36838 朱膘
     845a33 赭石
     1685a9 石青
     16a951 石绿
     fff2df 白粉
     */
    logo.backgroundColor = JFYellowColor; // 明黄色?   0xfff143 0xefff79 0xfaff72
    logo.width = SCREEN_WIDTH * 0.5;
    logo.height = logo.width;
    logo.centerX = SCREEN_WIDTH * 0.5;
    logo.centerY = SCREEN_HEIGHT * 0.5;
    logo.cornerRadius = logo.width * 0.5;
    [self.view addSubview:logo];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
