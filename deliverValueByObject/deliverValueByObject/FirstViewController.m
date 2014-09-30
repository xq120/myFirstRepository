//
//  FirstViewController.m
//  deliverValueByObject
//
//  Created by apple  on 14-8-18.
//  Copyright (c) 2014年 xq. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 40);
    [btn setTitle:@"上一页" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(didClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.v.age = 22;
    _value = 25;
}


- (void)didClicked
{
    UIViewController *viewCtrl = self.navigationController.viewControllers[0]; //这里只是定义一个变量并赋值而已。
    [self.navigationController popToViewController:viewCtrl animated:YES];
    self.v.f = self;  //碰面的时候，留下线索。
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
