//
//  AJBaseNavigationController.m
//  CopyAXF
//
//  Created by mac on 16/10/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "AJBaseNavigationController.h"

@interface AJBaseNavigationController ()

//PUSH过后 页面的返回按钮
@property (nonatomic , strong)UIButton *backBtn;

@end

@implementation AJBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.backBtn = ({
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"v2_goback"] forState:UIControlStateNormal];
        btn.titleLabel.hidden = YES;
        [btn addTarget:self action:@selector(backBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        btn.contentEdgeInsets = UIEdgeInsetsMake(0 , -10, 0, 0);
        btn.frame = CGRectMake(0, 0, 44, 40);
        btn;
    });
}


//重写PUSH方法
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:self.backBtn];
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}


//pop回上级页面
-(void)backBtnClicked:(UIButton *)sender{
    [self popViewControllerAnimated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
