//
//  CGXPopoverView.h
//  CGXPopoverVIew
//
//  Created by 曹贵鑫 on 2018/6/6.
//  Copyright © 2018年 曹贵鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CGXPopoverItem.h"
// 弹窗箭头的样式
typedef NS_ENUM(NSUInteger, PopoverViewArrowStyle) {
    PopoverViewArrowStyleRound = 0, // 圆角
    PopoverViewArrowStyleTriangle   // 菱角
};

@interface CGXPopoverView : UIView

/**
 是否开启点击外部隐藏弹窗, 默认为YES.
 */
@property (nonatomic, assign) BOOL hideAfterTouchOutside;

/**
 是否显示阴影, 如果为YES则弹窗背景为半透明的阴影层,  默认为YES.
 */
@property (nonatomic, assign) BOOL showShade;
/**
 是否有动画, 默认为YES.
 */
@property (nonatomic, assign) BOOL isAnimate;
/**
 弹出窗风格, 默认为 PopoverViewStyleDefault(白色).
 */
@property (nonatomic, assign) CGXPopoverItemStyle style;

/**
 箭头样式, 默认为 PopoverViewArrowStyleRound.
 如果要修改箭头的样式, 需要在显示先设置.
 */
@property (nonatomic, assign) PopoverViewArrowStyle arrowStyle;

+ (instancetype)popoverView;

/**
 指向指定的View来显示弹窗

 @param pointView 箭头指向的View
 @param actions 动作对象集合<PopoverAction>
 */
- (void)showToView:(UIView *)pointView withActions:(NSArray<CGXPopoverItem *> *)actions;

/**
 指向指定的点来显示弹窗

 @param toPoint 箭头指向的点(这个点的坐标需按照keyWindow的坐标为参照)
 @param actions 动作对象集合<PopoverAction>
 */
- (void)showToPoint:(CGPoint)toPoint withActions:(NSArray<CGXPopoverItem *> *)actions;

@end
