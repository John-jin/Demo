//
//  ViewController.m
//  Demo
//
//  Created by jxn on 2017/1/5.
//  Copyright © 2017年 jxn. All rights reserved.
//

#import "BaseViewController.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)nextVC:(UIButton *)sender {
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"secondvc"];
    [self nextController:vc :@"导航栏"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
