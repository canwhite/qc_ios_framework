//
//  AppDelegate.m
//  qc_ios_fk
//
//  Created by zack on 2023/7/31.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];//设置和界面大小的窗口
    TabBarViewController *vc = [[TabBarViewController alloc] init];
    /**
        这里是用Nav取管理Tab，整个Tab页就变成了栈的一环，然后跳转也会变得非常简单，只是栈的更迭，tab页有点像前端的frame
     */
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController: vc];
    self.window.rootViewController = nav;
 
    self.window.backgroundColor=[UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}





@end
