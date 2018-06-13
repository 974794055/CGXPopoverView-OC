//
//  CGXPopoverView.h
//  CGXPopoverVIew
//
//  Created by 曹贵鑫 on 2018/6/6.
//  Copyright © 2018年 曹贵鑫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CGXPopoverManager.h"
#import "CGXPopoverItem.h"

typedef void (^CGXPopoverViewSelectItemBlock)(CGXPopoverItem *item,NSIndexPath *indexPath);

@interface CGXPopoverView : UIView


- (instancetype)initWithFrame:(CGRect)frame WithManager:(CGXPopoverManager *)manager;

@property (nonatomic , strong) CGXPopoverManager *manager;
/**
 指向指定的View来显示弹窗

 @param pointView 箭头指向的View
 */
- (void)showToView:(UIView *)pointView
        SelectItem:(CGXPopoverViewSelectItemBlock)selectItem;

/**
 指向指定的点来显示弹窗

 @param toPoint 箭头指向的点(这个点的坐标需按照keyWindow的坐标为参照)
 */
- (void)showToPoint:(CGPoint)toPoint
         SelectItem:(CGXPopoverViewSelectItemBlock)selectItem;



@end
