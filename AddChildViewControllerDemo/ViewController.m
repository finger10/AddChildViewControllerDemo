//
//  ViewController.m
//  AddChildViewControllerDemo
//
//  Created by gg on 2017/11/28.
//  Copyright © 2017年 JayS. All rights reserved.
//

#import "ViewController.h"

#import "BXHFirstViewController.h"
#import "BXHSecondViewController.h"
#import "BXHThirdViewController.h"

@interface ViewController ()

@property (nonatomic,strong)UIViewController *currentViewController;
@property (nonatomic,strong)BXHFirstViewController *firstVC;
@property (nonatomic,strong)BXHSecondViewController *secondVC;
@property (nonatomic,strong)BXHThirdViewController *thirdVC;
@property (weak, nonatomic) IBOutlet UIView *contenView;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    在苹果的 WWDC2011 大会视频的
//    《Session 101 - What’s New in Cocoa》 和
//    《Session 102 - Implementing UIViewController Containment》 中介绍了苹果在 iOS5 中给 UIViewController 新增加的 5 方法以及一个属性: addChildViewController系列方法
    
 // **** 优点节省内存 .需要加载时才load
    
    // Do any additional setup after loading the view, typically from a nib.
    
    self.firstVC = [BXHFirstViewController new];
    [self addChildViewController:self.firstVC];
    
    self.secondVC = [BXHSecondViewController new];
    [self addChildViewController:self.secondVC];
    
    self.thirdVC = [BXHThirdViewController new];
    [self addChildViewController:self.thirdVC];
    
//    view 在没有使用时，是不会被 load 的，并且当有 Memory Warning 时，当前没有显示的 view 自动被 unload 掉了。所以新的方法确实能有效地节省内存，也能方便地处理内存不足时的资源回收
    
    [self.contenView addSubview:self.firstVC.view];
    self.currentViewController =self.firstVC;
    
}

-(IBAction)onClickbutton:(id)sender
{
    
    if ((self.currentViewController==self.firstVC&&[sender tag]==2001)||(self.currentViewController==self.secondVC&&[sender tag]==2002) ||(self.currentViewController==self.thirdVC&&[sender tag]==2003) ) {
        return;
    }
    
    UIViewController *oldViewController = self.currentViewController;
    
    switch ([sender tag]) {
        case 2001:
        {
            [self transitionFromViewController:self.currentViewController toViewController:self.firstVC duration:1 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
                
            } completion:^(BOOL finished) {
                
                if(finished){
                    self.currentViewController = self.firstVC;
                }else{
                    self.currentViewController = oldViewController;
                }
                
            }];
        }
            break;
            
        case 2002:
        {
            [self transitionFromViewController:self.currentViewController toViewController:self.secondVC duration:1 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
                
            } completion:^(BOOL finished) {
                
                if(finished){
                    self.currentViewController = self.secondVC;
                }else{
                    self.currentViewController = oldViewController;
                }
                
            }];
        }
            break;
            
        case 2003:
        {
            [self transitionFromViewController:self.currentViewController toViewController:self.thirdVC duration:1 options:UIViewAnimationOptionTransitionCurlUp animations:^{
                
            } completion:^(BOOL finished) {
                
                if(finished){
                    self.currentViewController = self.thirdVC;
                }else{
                    self.currentViewController = oldViewController;
                }
                
            }];
        }
            break;
    
        default:
            break;
    }
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
