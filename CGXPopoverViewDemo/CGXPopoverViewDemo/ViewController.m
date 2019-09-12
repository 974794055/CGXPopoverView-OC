//
//  MyViewController.m
//  CGXPopoverVIew
//
//  Created by CGX on 2018/6/6.
//  Copyright © 2018年 CGX. All rights reserved.
//

#import "ViewController.h"

#import "CGXPopoverView.h"

@interface ViewController ()
@property (nonatomic , strong) NSMutableArray *items;
@property (nonatomic , strong) CGXPopoverManager *manager1;
@property (nonatomic , strong) CGXPopoverManager *manager2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.items = [NSMutableArray arrayWithArray:[self QQActions]];
}

- (NSArray<CGXPopoverItem *> *)QQActions {
    NSArray *arr1 =    @[@"扫一扫",@"加好友",@"创建讨论组",@"发送到电脑",@"面对面快传",@"收钱"];
    NSArray *arr2=@[@"saoyisao.png",@"jiahaoyou.png",@"taolun.png",@"diannao.png",@"diannao.png",@"shouqian.png"];
    
    NSMutableArray *actionAry = [NSMutableArray array];
    for (int i = 0; i<arr1.count; i++) {
        if (i > 0) {
            CGXPopoverItem *action1 = [CGXPopoverItem actionWithImage:[UIImage imageNamed:arr2[i]] Title:arr1[i]];
            [actionAry addObject:action1];
        }else{
            CGXPopoverItem *action1 = [CGXPopoverItem actionWithImage:[UIImage imageNamed:arr2[i]] Title:arr1[i] IsSelect:YES];
            [actionAry addObject:action1];
        }
    }
    return actionAry;
}
- (IBAction)qqq:(UIBarButtonItem *)sender {
    
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"SelectindexPath1"]) {
        NSInteger row = [[[NSUserDefaults standardUserDefaults] objectForKey:@"SelectindexPath1"] integerValue];
        self.manager1.selectIndexPath =  [NSIndexPath indexPathForRow:row inSection:0];
    }
    CGXPopoverView *popoverView = [[CGXPopoverView alloc] initWithFrame:CGRectNull WithManager:self.manager1];
    
    [popoverView showToPoint:CGPointMake(self.view.frame.size.width-40, 88) SelectItem:^(CGXPopoverItem *item, NSIndexPath *indexPath) {
         NSLog(@"%@--action1:%@" , indexPath,item.title);
         [[NSUserDefaults standardUserDefaults] setObject:@(indexPath.row) forKey:@"SelectindexPath1"];
    }];
    
}
- (IBAction)www:(UIButton *)sender {
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"SelectindexPath2"]) {
        NSInteger row = [[[NSUserDefaults standardUserDefaults] objectForKey:@"SelectindexPath2"] integerValue];
        self.manager2.selectIndexPath =  [NSIndexPath indexPathForRow:row inSection:0];
    }
        CGXPopoverView *popoverView = [[CGXPopoverView alloc] initWithFrame:CGRectNull WithManager:self.manager2];
    [popoverView showToView:sender SelectItem:^(CGXPopoverItem *item, NSIndexPath *indexPath) {
        [[NSUserDefaults standardUserDefaults] setObject:@(indexPath.row) forKey:@"SelectindexPath2"];
        NSLog(@"%@--action2:%@" , indexPath,item.title);
    }];

}

- (CGXPopoverManager *)manager1
{
    if (!_manager1) {
        _manager1 = [CGXPopoverManager new];
        _manager1.style = CGXPopoverManagerItemDark;
        _manager1.showShade = YES;
        _manager1.isAnimate = YES;
        _manager1.hideAfterTouchOutside = YES;
        _manager1.modleArray = self.items;
        _manager1.selectIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        _manager1.arrowStyle = CGXPopoverManagerArrowStyleRound;
    }
    return _manager1;
}
- (CGXPopoverManager *)manager2
{
    if (!_manager2) {
        _manager2 = [CGXPopoverManager new];
        _manager2.style = CGXPopoverManagerItemDefault;
        _manager2.showShade = YES;
        _manager2.isAnimate = NO;
        _manager2.hideAfterTouchOutside = YES;
         _manager2.modleArray = self.items;
        _manager2.selectIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
        _manager2.arrowStyle = CGXPopoverManagerArrowStyleTriangle;
    }
    return _manager2;
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
