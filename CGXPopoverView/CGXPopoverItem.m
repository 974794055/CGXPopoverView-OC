//
//  CGXPopoverItem.m
//  CGXPopoverVIew
//
//  Created by 曹贵鑫 on 2018/6/6.
//  Copyright © 2018年 曹贵鑫. All rights reserved.
//

#import "CGXPopoverItem.h"
@interface CGXPopoverItem ()

@property (nonatomic, strong, readwrite) UIImage *image; ///< 图标
@property (nonatomic, copy, readwrite) NSString *title; ///< 标题
@property (nonatomic, copy, readwrite) NSDictionary *userInfo; ///< 标题相关详情字典
@property (nonatomic, copy, readwrite) UIFont  *titleFont;
@property (nonatomic, copy, readwrite) UIColor *titleColor;
@property (nonatomic, assign, readwrite) NSTextAlignment  alignment;
@property (nonatomic, assign, readwrite) BOOL  isSelect;// 默认选中
@end

@implementation CGXPopoverItem
+ (instancetype)actionWithTitle:(NSString *)title
{
    return [self actionWithImage:nil Title:title];
}

+ (instancetype)actionWithImage:(UIImage *)image
                          Title:(NSString *)title
{
    return [self actionWithImage:image Title:title TitleFont:[UIFont systemFontOfSize:15] TitleColor:[UIColor blackColor] UserInfo:@{} Alignment:NSTextAlignmentLeft IsSelect:NO];
}
+ (instancetype)actionWithImage:(UIImage *)image
                          Title:(NSString *)title
                       IsSelect:(BOOL)isSelect
{
      return [self actionWithImage:image Title:title TitleFont:[UIFont systemFontOfSize:15] TitleColor:[UIColor blackColor] UserInfo:@{} Alignment:NSTextAlignmentLeft IsSelect:isSelect];
}
+ (instancetype)actionWithImage:(UIImage *)image
                          Title:(NSString *)title
                      TitleFont:(UIFont *)titleFont
                     TitleColor:(UIColor *)titleColor
                       UserInfo:(NSDictionary *)userInfo
                      Alignment:(NSTextAlignment)alignment
                       IsSelect:(BOOL)isSelect;
{
    CGXPopoverItem *action = [[self alloc] init];
    action.image = image;
    action.title = title ? : @"";
    action.userInfo = userInfo;
    action.titleFont = titleFont;
    action.titleColor = titleColor;
    action.alignment = alignment;
    action.isSelect = isSelect;
    return action;
}
@end
