//
//  BaseNavigationController.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/31.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationBar.translucent = NO;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //push时，隐藏tabBar。
    if (self.viewControllers.count > 0)
        viewController.hidesBottomBarWhenPushed = YES;
    
    [super pushViewController:viewController animated:animated];
}



@end
