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

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"首页";
    

    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    [self.view addSubview:label]; //先加上，再设置
    label.center = self.view.center;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"First";

}


@end
