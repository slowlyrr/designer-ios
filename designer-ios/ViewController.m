//
//  ViewController.m
//  designer-ios
//
//  Created by r on 14-12-6.
//  Copyright (c) 2014年 jINWANR. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "MainTab0ViewController.h"
#import "MainTab1ViewController.h"
#import "MainTab2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor orangeColor]];
    UIImage *logoImage = [UIImage imageNamed:@"logo_splash"];
    UIImageView *logoImageView = [[UIImageView alloc]initWithImage:logoImage];
    [self.view addSubview:logoImageView];
    
    NSDictionary *dict = NSDictionaryOfVariableBindings(logoImageView);
    
//    //使用约束
//    logoImageView.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-120-[logoImageView]" options:0 metrics:nil views:dict]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-90-[logoImageView]-90-|" options:0 metrics:nil views:dict]];
//    
//    
//    UIButton *goLoginBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//    goLoginBtn.frame = CGRectMake(0, 200, 100, 50);
//    [goLoginBtn setTitle:@"Go2Login" forState:UIControlStateNormal];
//    [goLoginBtn addTarget:self action:@selector(goLoginBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:goLoginBtn];
    
    
}


-(void)goLoginBtn

:(UIButton *)sender{
//    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"按钮点击提示" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
//    [myAlertView show];
    
//    MainTabViewController *mainTabVc=[[MainTabViewController alloc] init];
    //[self presen:loginVc animated:YES];
    
    
    UIViewController *tab0Vc = [[MainTab0ViewController alloc] init];
    UIViewController *tab1Vc = [[MainTab1ViewController alloc] init];
    UIViewController *tab2Vc = [[MainTab2ViewController alloc] init];
    UIViewController *tab3Vc = [[MainTab2ViewController alloc] init];
    
    UINavigationController *nav0 = [[UINavigationController alloc]initWithRootViewController:tab0Vc];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:tab1Vc];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:tab2Vc];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:tab3Vc];
    
    nav0.title = @"金玩儿网";
    nav1.title = @"热门作品";
    nav2.title = @"我的消息";
    nav3.title = @"关于我";
    
//    [nav0.view setBackgroundColor:[UIColor blackColor]];
//    [nav1.view setBackgroundColor:[UIColor blackColor]];
//    [nav2.view setBackgroundColor:[UIColor blackColor]];
//    [nav3.view setBackgroundColor:[UIColor blackColor]];
    
    nav0.tabBarItem.image = [UIImage imageNamed:@"tab_icon_main"];
    nav1.tabBarItem.image = [UIImage imageNamed:@"tab_icon_hot"];
    nav2.tabBarItem.image = [UIImage imageNamed:@"tab_icon_msgbox"];
    nav3.tabBarItem.image = [UIImage imageNamed:@"tab_icon_profile"];
    
    UITabBarController *mainTabController = [[UITabBarController alloc]init];
    mainTabController.viewControllers = @[nav0, nav1, nav2, nav3];
    //设置背景图片（背景颜色效果不明显）
    [mainTabController.tabBar setBackgroundImage:[UIImage imageNamed:@"main_tab_bg_normal"]];
    //设置被选中标签的背景图片，宽度是375/5=77
    mainTabController.tabBar.selectionIndicatorImage=[UIImage imageNamed:@"main_tab_bg_active"];
    //icon的图标颜色
    [mainTabController.tabBar setTintColor:[UIColor whiteColor]];    
    [self presentViewController:mainTabController animated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
