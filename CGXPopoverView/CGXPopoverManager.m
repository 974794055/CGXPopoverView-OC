//
//  CGXPopoverManager.m
//  CGXPopoverViewDemo
//
//  Created by 曹贵鑫 on 2018/6/13.
//  Copyright © 2018年 曹贵鑫. All rights reserved.
//

#import "CGXPopoverManager.h"

@implementation CGXPopoverManager

- (NSMutableArray *)modleArray
{
    if (!_modleArray) {
        _modleArray = [NSMutableArray array];
    }
    return _modleArray;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
       _selectIndexPath = [NSIndexPath indexPathForItem:0 inSection:0];
    }
    return self;
}
- (BOOL)hideAfterTouchOutside
{
    if (!_hideAfterTouchOutside) {
        _hideAfterTouchOutside = YES;
    }
    return _hideAfterTouchOutside;
}
- (BOOL)showShade
{
    if (!_showShade) {
        _showShade = YES;
    }
    return _showShade;
}
- (BOOL)isAnimate
{
    if (!_isAnimate) {
        _isAnimate = YES;
    }
    return _isAnimate;
}
- (CGFloat)timeInterval
{
    if (!_timeInterval) {
        _timeInterval = 0.5;
    }
    return _timeInterval;
}
- (UIColor *)selectTitleColor
{
    if (!_selectTitleColor) {
        _selectTitleColor = [UIColor redColor];
    }
    return _selectTitleColor;
}
- (CGXPopoverManagerItemStyle)style
{
    if (!_style) {
        _style = CGXPopoverManagerItemDefault;
    }
    return _style;
}
- (CGXPopoverManagerArrowStyle)arrowStyle
{
    if (!_arrowStyle) {
        _arrowStyle = CGXPopoverManagerArrowStyleRound;
    }
    return _arrowStyle;
}

@end
