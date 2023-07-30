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
