//
//  SecondNavViewController.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "SecondNavViewController.h"
#import "SecondViewController.h"

@interface SecondNavViewController ()

@end

@implementation SecondNavViewController

- (instancetype)init {
    // 初始化根视图控制器为HomeViewController
    SecondViewController *homeVC = [[SecondViewController alloc] init];
    // 调用父类的初始化方法
    self = [super initWithRootViewController:homeVC];
    if (self) {
        // 设置导航栏的样式和标题
        self.navigationBar.backgroundColor = [UIColor colorWithHex:0xF2F293];
        self.navigationBar.barStyle = UIBarStyleDefault;
        //title颜色
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
