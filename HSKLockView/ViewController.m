//
//  ViewController.m
//  HSKLockView
//
//  Created by 二哈 on 16/8/21.
//  Copyright © 2016年 侯森魁. All rights reserved.
//

#import "ViewController.h"
#import "HSKGestureLockView.h"
#define getBigImage(name,type) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:name ofType:type]]
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    UIImageView *bg  =[[UIImageView alloc]initWithFrame:self.view.bounds];
   
    
    bg.image = getBigImage(@"Home_refresh_bg", @"png");
    
    [self.view addSubview:bg];
    
    
    HSKGestureLockView * lockView  =[[HSKGestureLockView alloc]initWithFrame:CGRectMake(0, 100, 320, 350) normalImage:@"gesture_node_normal" selectedImage:@"gesture_node_highlighted" lineColor:[UIColor greenColor] lineWidth:8.0 btnWidth:60.0];
    
    [lockView setCallBackPassword:^(NSString *password){
        
        NSLog(@"绘制的密码是:%@",password);
    }];
    
    [self.view addSubview:lockView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
