//
//  AJSelectedAdressViewController.m
//  CopyAXF
//
//  Created by mac on 16/10/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "AJSelectedAdressViewController.h"
#import "UIBarButtonItem+UIButton.h"

@interface AJSelectedAdressViewController ()

@end

@implementation AJSelectedAdressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self buildNavigationBar];
    
}


//调用重写的UIBarButtonItem
-(void)buildNavigationBar{
    //设置UIBarButtonItem左按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItem:@"扫一扫" image:@"播放" target:self action:@selector(LeftItemButtonClicket) type:LeftItemButton];
    //设置UIBarButtonItem右按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItem:@"搜索" image:@"暂停" target:self action:@selector(RightItemButtonClicket) type:RightItemButton];
    
    
    self.navigationController.navigationBar.barTintColor =  [UIColor colorWithRed:0.992 green:0.831 blue:0.192 alpha:1.000];
    
}


//左按钮点击方法
-(void)LeftItemButtonClicket{
    NSLog(@"不是真机你扫毛线啊");
}

//右按钮点击方法
-(void)RightItemButtonClicket{
    NSLog(@"爸爸爱你.jpg");
}


//- (void)buildNavigationBar
//{
//    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItem:@"扫一扫" image:@"icon_black_scancode" target:self action:@selector(LeftItemButtonClicket) type:LeftItemButton];
//    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItem:@"搜索" image:@"icon_search" target:self action:@selector(rightBarButtonClick) type:RightItemButton];
//    
//    self.navigationController.navigationBar.barTintColor = GeneralColor;
//}
//
///**
// *  将要显示进入控制器调用
// */
//- (void)viewWillAppear:(BOOL)animated{
//    
//}
//
//#pragma callBack method
//- (void)LeftItemButtonClicket{
//    NSLog(@"扫一扫");
//}
//- (void)rightBarButtonClick{
//    NSLog(@"搜索");
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
\
@end
