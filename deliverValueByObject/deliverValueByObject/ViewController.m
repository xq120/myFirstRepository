//
//  ViewController.m
//  deliverValueByObject
//
//  Created by apple  on 14-8-18.
//  Copyright (c) 2014年 xq. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 40);
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(didClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}



- (void)didClicked
{
    FirstViewController *firstViewCtrl = [[FirstViewController alloc]init];
    firstViewCtrl.v =self; //碰面的时候留下线索。
    [self.navigationController pushViewController:firstViewCtrl animated:YES];
    NSLog(@"age = %d",_age);
    NSLog(@"value = %d",self.f.value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
