//
//  FirstNavViewController.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "FirstNavViewController.h"
#import "FirstViewController.h"
#import "UIColor+Hex.h"
@interface FirstNavViewController ()

@end

@implementation FirstNavViewController

- (instancetype)init {
    // 初始化根视图控制器为HomeViewController
    FirstViewController *homeVC = [[FirstViewController alloc] init];
    // 调用父类的初始化方法
    self = [super initWithRootViewController:homeVC];
    if (self) {
        //hex 0x接十六进制
        self.navigationBar.backgroundColor = [UIColor colorWithHex:0xF2F293];
        self.navigationBar.barStyle = UIBarStyleDefault;
        self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor blackColor]};
    }
    return self;
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
