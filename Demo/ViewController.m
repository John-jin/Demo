//
//  ViewController.m
//  Demo
//
//  Created by jxn on 2017/1/5.
//  Copyright © 2017年 jxn. All rights reserved.
//

#import "BaseViewController.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "NewTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

/**
 * 第二个页面返回的数据
 */
-(void)PassValue:(NSString *)value{
    self.navigationItem.title = value;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)gotoTableView:(UIButton *)sender {
    NewTableViewController *cv = [self.storyboard instantiateViewControllerWithIdentifier:@"tableviewcv"];
    [self nextController:cv :@"列表"];
    
}
- (IBAction)gotoImageView:(id)sender {
}

- (IBAction)nextVC:(UIButton *)sender {
    SecondViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"secondvc"];
    vc.delegate = self;
    vc.value = @"传参数";
    [self nextController:vc :@"导航栏"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
