//
//  NewTableViewController.m
//  Demo
//
//  Created by jxn on 2017/1/6.
//  Copyright © 2017年 jxn. All rights reserved.
//

#import "NewTableViewController.h"
#import "TVCellTableViewCell.h"

@interface NewTableViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableview;
@property (nonatomic,strong) NSMutableArray *array;
@property (nonatomic,assign) NSInteger postion;
@end

@implementation NewTableViewController
-(void)navigateRightClick{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"点击右按钮" preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES
                     completion:nil];
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    _postion = indexPath.row;
    NSString *tip = [NSString stringWithFormat:@"点击了%ld",_postion];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:tip preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES
                     completion:nil];
}
- (void)viewDidLoad {
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"自定义cell" style:UIBarButtonItemStylePlain target:self action:@selector(navigateRightClick)];
    self.navigationItem.rightBarButtonItem = btn;
    [super viewDidLoad];
    _array = [NSMutableArray array];
    for (int i=0; i<100; i++) {
        NSString *str = [NSString stringWithFormat:@"%d",i];
        [_array addObject:str];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView
    cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"reuseitem";
    TVCellTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellId];
    if(cell == nil){
        cell = [[TVCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    [cell setData:_array[indexPath.row]];
    
    return cell;
}

@end
