//
//  ViewController.m
//  runTimeTest
//
//  Created by zhangdaliang on 17/2/24.
//  Copyright © 2017年 yshow. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,assign) NSInteger type;

@end

@implementation ViewController
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.type += 1;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *lb =[[UILabel alloc]initWithFrame:self.view.bounds];
    lb.text = @"张大亮";
    lb.font = [UIFont systemFontOfSize:5];
    lb.textColor = [UIColor blueColor];
    [self.view addSubview:lb];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
