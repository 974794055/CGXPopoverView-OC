//
//  MyViewController.m
//  CGXPopoverVIew
//
//  Created by 曹贵鑫 on 2018/6/6.
//  Copyright © 2018年 曹贵鑫. All rights reserved.
//

#import "ViewController.h"
#import "CGXPopoverView.h"
#import "CGXPopoverItem.h"

@interface ViewController ()
@property (nonatomic , strong) NSMutableArray *items;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UILabel *testLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 30)];
//    testLabel.textAlignment = NSTextAlignmentCenter;
//      NSMutableAttributedString *AttributedStr = [[NSMutableAttributedString alloc]initWithString:@"猴年大吉,新春快乐!"];
//      [AttributedStr addAttribute:NSFontAttributeName
//                                  value:[UIFont systemFontOfSize:26.0]
//                                     range:NSMakeRange(2, 2)];
//        [AttributedStr addAttribute:NSForegroundColorAttributeName
//                                      value:[UIColor redColor]
//                                      range:NSMakeRange(2, 2)];
//        [AttributedStr addAttribute:NSBackgroundColorAttributeName
//                                     value:[UIColor redColor]
//                                       range:NSMakeRange(7, 2)];
//         testLabel.attributedText = AttributedStr;
//         [self.view addSubview:testLabel];
    
}

- (NSArray<CGXPopoverItem *> *)QQActions {
    NSArray *arr1 =    @[@"扫一扫",@"加好友",@"创建讨论组",@"发送到电脑",@"面对面快传",@"收钱"];
    NSArray *arr2=@[@"saoyisao.png",@"jiahaoyou.png",@"taolun.png",@"diannao.png",@"diannao.png",@"shouqian.png"];
    
    NSMutableArray *actionAry = [NSMutableArray array];
    for (int i = 0; i<arr1.count; i++) {
        CGXPopoverItem *action1 = [CGXPopoverItem actionWithImage:[UIImage imageNamed:arr2[i]] Title:arr1[i] Handler:^(CGXPopoverItem *action) {
            NSLog(@"action:%@" , action.title);
        }];
        
        [actionAry addObject:action1];
    }
    return actionAry;
}
- (IBAction)qqq:(UIBarButtonItem *)sender {
    
    CGXPopoverView *popoverView = [[CGXPopoverView alloc] initWithFrame:CGRectNull];
    popoverView.style = CGXPopoverItemDefault;
    // 在没有系统控件的情况下调用可以使用显示在指定的点坐标的方法弹出菜单控件.
    [popoverView showToPoint:CGPointMake(self.view.frame.size.width-40, 64) withActions:[self QQActions]];
}
- (IBAction)www:(UIButton *)sender {
    CGXPopoverView *popoverView = [[CGXPopoverView alloc] initWithFrame:CGRectNull];
    popoverView.arrowStyle = PopoverViewArrowStyleTriangle;
    popoverView.showShade = YES; // 显示阴影背景
    [popoverView showToView:sender withActions:[self QQActions]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
