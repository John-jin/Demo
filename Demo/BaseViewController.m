//
//  BaseViewController.m
//  Demo
//
//  Created by jxn on 2017/1/5.
//  Copyright © 2017年 jxn. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)nextController:(UIViewController *) pVC :(NSString *) title{

    [pVC setTitle:title];
    UIBarButtonItem *back =[[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    back.title = @"返回";
    [self.navigationItem setBackBarButtonItem:back];
    [self.navigationController pushViewController:pVC animated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
