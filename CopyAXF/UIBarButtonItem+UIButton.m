//
//  UIBarButtonItem+UIButton.m
//  CopyAXF
//
//  Created by mac on 16/10/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "UIBarButtonItem+UIButton.h"
#import "ItemCustomButton.m"
@implementation UIBarButtonItem (UIButton)

+(instancetype)barButtonItem:(NSString *)title image:(NSString *)image target:(id)target action:(SEL)action type:(itemButtonType)type{
    UIButton *button;
    //根据枚举类型选择左按钮还是右按钮
    if (type == LeftItemButton) {
        button = [ItemLeftButton buttonWithType:UIButtonTypeCustom];
    }else{
        button = [ItemRighButton buttonWithType:UIButtonTypeCustom];
    }
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(0, 0, 64, 44);
    button.titleLabel.font = [UIFont systemFontOfSize:13];

    return [[UIBarButtonItem alloc]initWithCustomView:button];
}
@end
