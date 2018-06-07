//
//  CGXPopoverItem.h
//  CGXPopoverVIew
//
//  Created by 曹贵鑫 on 2018/6/6.
//  Copyright © 2018年 曹贵鑫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, CGXPopoverItemStyle) {
    CGXPopoverItemDefault = 0, // 默认风格, 白色
    CGXPopoverItemDark, // 黑色风格
};
@interface CGXPopoverItem : NSObject
@property (nonatomic, strong, readonly) UIImage *image; ///< 图标 (建议使用 60pix*60pix 的图片)
@property (nonatomic, copy, readonly) NSString *title; ///< 标题
@property (nonatomic, copy, readonly) void(^handler)(CGXPopoverItem *action); ///< 选择回调, 该Block不会导致内存泄露, Block内代码无需刻意去设置弱引用.

@property (nonatomic, copy, readonly) NSDictionary *userInfo; ///< 标题相关详情字典
@property (nonatomic, copy, readonly) UIFont  *titleFont;
@property (nonatomic, copy, readonly) UIColor *titleColor;
@property (nonatomic, assign, readonly) NSTextAlignment  alignment;

+ (instancetype)actionWithTitle:(NSString *)title
                        Handler:(void (^)(CGXPopoverItem *action))handler;
+ (instancetype)actionWithImage:(UIImage *)image
                          Title:(NSString *)title
                        Handler:(void (^)(CGXPopoverItem *action))handler;
+ (instancetype)actionWithImage:(UIImage *)image
                          Title:(NSString *)title
                      TitleFont:(UIFont *)titleFont
                     TitleColor:(UIColor *)titleColor
                       UserInfo:(NSDictionary *)userInfo
                      Alignment:(NSTextAlignment)alignment
                        Handler:(void (^)(CGXPopoverItem *action))handler;
@end
