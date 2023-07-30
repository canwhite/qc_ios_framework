//
//  TabBarViewController.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "TabBarViewController.h"
#import "BaseNavigationController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"


@interface TabBarViewController ()

@end

@implementation TabBarViewController

-(void)viewWillAppear:(BOOL)animated{
//    self.navigationItem.title = @"Home";
    // 设置tabBarHidden属性为false
    //[self.tabBarController setTabBarHidden:NO animated:YES];
    self.title = @"首页";
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.translucent = NO;
    // Do any additional setup after loading the view.
    
    // 初始化子控制器和Nav控制器
    FirstViewController *home =  [[FirstViewController alloc] init];
    SecondViewController *mine =  [[SecondViewController alloc] init];

    
    // 设置TabBarItem的标题和图标
    home.tabBarItem.title = @"首页";
//    homeNav.tabBarItem.image = [UIImage imageNamed:@"home"];
    mine.tabBarItem.title = @"我的";
//    mineNav.tabBarItem.image = [UIImage imageNamed:@"mine"];

    self.tabBar.backgroundColor =[UIColor colorWithHex:0xF2F293];
    // 添加到viewControllers数组中
    self.viewControllers = @[home, mine];
    self.delegate = self;
    
}

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    // 当用户选择了某个子视图控制器时调用
    NSLog(@"Selected view controller: %@", viewController);
    if ([viewController isKindOfClass:[FirstViewController class]]) {
        self.title = @"首页";
    }
    if ([viewController isKindOfClass:[SecondViewController class]]) {
        self.title = @"我的";
    }
}

-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    // 当用户尝试选择某个子视图控制器时调用，返回是否允许选择
//    NSLog(@“Trying to select view controller: %@”, viewController);
    return YES;

}



@end
