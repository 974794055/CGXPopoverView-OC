//
//  CGXPopoverItem.h
//  CGXPopoverVIew
//
//  Created by CGX on 2018/6/6.
//  Copyright © 2018年 CGX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface CGXPopoverItem : NSObject
@property (nonatomic, strong,readonly) UIImage *image; ///< 图标 (建议使用 60pix*60pix 的图片)
@property (nonatomic, copy,readonly) NSString *title; ///< 标题

@property (nonatomic, copy,readonly) NSDictionary *userInfo; ///< 标题相关详情字典
@property (nonatomic, copy, readonly) UIFont  *titleFont;
@property (nonatomic, copy, readonly) UIColor *titleColor;
@property (nonatomic, assign, readonly) NSTextAlignment  alignment;

@property (nonatomic, assign, readonly) BOOL  isSelect;// 默认选中


+ (instancetype)actionWithTitle:(NSString *)title;
+ (instancetype)actionWithImage:(UIImage *)image
                          Title:(NSString *)title;
+ (instancetype)actionWithImage:(UIImage *)image
                          Title:(NSString *)title
                       IsSelect:(BOOL)isSelect;
+ (instancetype)actionWithImage:(UIImage *)image
                          Title:(NSString *)title
                      TitleFont:(UIFont *)titleFont
                     TitleColor:(UIColor *)titleColor
                       UserInfo:(NSDictionary *)userInfo
                      Alignment:(NSTextAlignment)alignment
                       IsSelect:(BOOL)isSelect;
@end
