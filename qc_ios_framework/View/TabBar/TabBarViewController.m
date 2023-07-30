//
//  TabBarViewController.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "TabBarViewController.h"
#import "FirstNavViewController.h"
#import "SecondNavViewController.h"


@interface TabBarViewController ()

@end

@implementation TabBarViewController

-(void)viewWillAppear:(BOOL)animated{
    self.navigationItem.title = @"Home";

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 初始化子控制器和Nav控制器
    FirstNavViewController *homeNav = [[FirstNavViewController alloc] init];
    SecondNavViewController *mineNav = [[SecondNavViewController alloc] init];
    
    // 设置TabBarItem的标题和图标
    homeNav.tabBarItem.title = @"首页";
//    homeNav.tabBarItem.image = [UIImage imageNamed:@"home"];
    mineNav.tabBarItem.title = @"我的";
//    mineNav.tabBarItem.image = [UIImage imageNamed:@"mine"];
    
    // 添加到viewControllers数组中
    self.viewControllers = @[homeNav, mineNav];
    
    
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
