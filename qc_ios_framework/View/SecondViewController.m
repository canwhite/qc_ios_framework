//
//  SecondViewController.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Second";
    [self.view addSubview:label];

    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    
    //logout
    UIButton *btn = [UIButton new];
    [self.view addSubview:btn];
    //然后设置一些颜色什么的
    [btn setTitle:@"logout" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    btn.layer.cornerRadius = 5.0;
    //[btn addTarget:self action:@selector(logoutAction) forControlEvents:UIControlEventTouchUpInside];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        //offset不用加
        make.top.equalTo(label.mas_bottom).offset(20);
        make.centerX.equalTo(self.view);
        //width和height + @，其实转的是NSNumber
        make.width.equalTo(@120);
        make.height.equalTo(@34);
    }];
    //RAC里边有
    @weakify(self);
    [btn bk_addEventHandler:^(id sender) {
        @strongify(self);
        // 调用接口进行登录
        NSLog(@"logout");
        //UIWindow *window = [UIApplication sharedApplication].keyWindow;
        // 获取当前的窗口对象
        UIWindow *window = self.view.window;

        // 创建一个登录页面的视图控制器对象
        LoginViewController *loginVC = [[LoginViewController alloc] init];
        // 将窗口的根视图控制器替换为登录页面的视图控制器
        window.rootViewController = loginVC;
    } forControlEvents:UIControlEventTouchUpInside];
    
    
    
}
//外置Handle
//- (void)logoutAction {}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
