//
//  BaseTabBarButton.m
//  CopyAXF
//
//  Created by mac on 16/10/12.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "BaseTabBarButton.h"

@implementation BaseTabBarButton

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


#pragma mark 设置button内部的image的范围

//重写按钮里面图片的位置
-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageW = contentRect.size.width;
    CGFloat imageH = contentRect.size.height;
    return CGRectMake(0, 2, imageW, imageH);
}


#pragma mark 设置button内部的title的范围



//- (CGRect)titleRectForContentRect:(CGRect)contentRect{
//    CGFloat titleY = contentRect.size.height * 0.6;
//    CGFloat titleW = contentRect.size.width;
//    CGFloat titleH = contentRect.size.height - titleY;
//    return CGRectMake(0, titleY, titleW, titleH);
//}
//- (void)setHighlighted:(BOOL)highlighted{
//    
//}


@end
