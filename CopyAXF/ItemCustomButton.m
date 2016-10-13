//
//  ItemCustomButton.m
//  CopyAXF
//
//  Created by mac on 16/10/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ItemCustomButton.h"

@implementation ItemCustomButton

@end



@implementation ItemLeftButton :UIButton

/**
 *  重写设置frmas方法
 */
-(void)layoutSubviews{
    [super layoutSubviews];
    [self.titleLabel sizeToFit];
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    CGFloat offset = -20;
    self.titleLabel.frame = CGRectMake(offset, height - 15, width, 15);
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    // 设置图片不拉伸
    self.imageView.contentMode = UIViewContentModeCenter;
    
}

@end



@implementation ItemRighButton :UIButton
/**
 *  重写设置frmas方法
 */
-(void)layoutSubviews{
    [super layoutSubviews];
    [self.titleLabel sizeToFit];
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    CGFloat offset = 20;
    self.titleLabel.frame = CGRectMake(offset, height - 15, width, 15);
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    // 设置图片不拉伸
    self.imageView.contentMode = UIViewContentModeCenter;
    
}


@end
