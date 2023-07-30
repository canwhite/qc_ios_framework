//
//  ViewController.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: YES];
    self.navigationItem.title = @"首页";
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UILabel *label = [[UILabel alloc] init];
//    label.text = @"First";
//    [self.view addSubview:label];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:button];
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];

}

- (void)buttonClicked:(UIButton *)sender {
    DetailsViewController *detailsVC = [[DetailsViewController alloc] init];
    detailsVC.data = @"123"; // 传递你想要的数据
    [self.navigationController pushViewController:detailsVC animated:NO];
}


@end
