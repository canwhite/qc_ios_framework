//
//  AppDelegate.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "AppDelegate.h"


@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    QCViewController *vc = [[QCViewController alloc] init];
    //加个nav控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return  YES;
}





@end
