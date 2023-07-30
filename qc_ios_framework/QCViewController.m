//
//  ViewController.m
//  qc_ios_framework
//
//  Created by zack on 2023/7/30.
//

#import "QCViewController.h"

@interface QCViewController ()

@end

@implementation QCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 50)];
    [self.view addSubview:label]; //先加上，再设置
    label.center = self.view.center;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Hello World";

}


@end
