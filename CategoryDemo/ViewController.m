//
//  ViewController.m
//  CategoryDemo
//
//  Created by mac on 15/12/20.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+tuozhan.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myColor = [UIColor redColor];
    NSLog(@"mycolor is  -------- %@",self.myColor);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}

@end
