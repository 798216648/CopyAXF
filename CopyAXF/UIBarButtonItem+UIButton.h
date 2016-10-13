//
//  UIBarButtonItem+UIButton.h
//  CopyAXF
//
//  Created by mac on 16/10/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,itemButtonType ) {
    LeftItemButton,
    RightItemButton
};

@interface UIBarButtonItem (UIButton)

+(instancetype)barButtonItem:(NSString *)title image:(NSString *)image target:(id)target action:(SEL)action type:(itemButtonType)type;

@end
