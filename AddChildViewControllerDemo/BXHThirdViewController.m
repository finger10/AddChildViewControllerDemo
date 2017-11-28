
//
//  BXHThirdViewController.m
//  AddChildViewControllerDemo
//
//  Created by gg on 2017/11/28.
//  Copyright © 2017年 JayS. All rights reserved.
//

#import "BXHThirdViewController.h"

@interface BXHThirdViewController ()

@end

//编译的时候，会替换为这条语句所在的函数的函数名
#define debugMethod() NSLog(@"%s", __func__)

@implementation BXHThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    debugMethod();
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    debugMethod();
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    debugMethod();
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    debugMethod();
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    debugMethod();
}

- (void)willMoveToParentViewController:(UIViewController *)parent {
    debugMethod();
}

- (void)didMoveToParentViewController:(UIViewController *)parent {
    debugMethod();
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
