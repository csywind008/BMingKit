//
//  ViewController.m
//  BMingKitProject
//
//  Created by 北冥 on 2019/1/3.
//  Copyright © 2019 com.beiming.kit. All rights reserved.
//

#import "ViewController.h"
#import "BMDevice.h"
//#import "UIButton+BMButton.h"
#import "BMButton.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *test;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",[BMDevice getAPPVersion]);
    
    BMButton *btn = [BMButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"expression"] forState:UIControlStateNormal];
    [btn setTitle:@"小哥" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 200, 100);
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor greenColor];
    [btn layoutSubview:BMButtonTypeVerticalTitleAndImage spacing:20];

    UIView *lineview1 = [[UIView alloc] init];
    lineview1.frame = CGRectMake(100, 0, 0.5, 100);
    lineview1.backgroundColor = [UIColor grayColor];
    [btn addSubview:lineview1];
    
    UIView *lineview2 = [[UIView alloc] init];
    lineview2.frame = CGRectMake(0, 50, 200, 0.5);
    lineview2.backgroundColor = [UIColor grayColor];
    [btn addSubview:lineview2];
    
    BMButton *btn2 = [BMButton buttonWithType:UIButtonTypeCustom];
    [btn2 setImage:[UIImage imageNamed:@"expression"] forState:UIControlStateNormal];
    [btn2 setTitle:@"小哥" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn2.frame = CGRectMake(100, 200, 200, 100);
    [self.view addSubview:btn2];
    btn2.backgroundColor = [UIColor greenColor];
    [btn2 layoutSubview:BMButtonTypeVerticalImageAndTitle spacing:20];

    UIView *lineview11 = [[UIView alloc] init];
    lineview11.frame = CGRectMake(100, 0, 0.5, 100);
    lineview11.backgroundColor = [UIColor grayColor];
    [btn2 addSubview:lineview11];
    
    UIView *lineview21 = [[UIView alloc] init];
    lineview21.frame = CGRectMake(0, 50, 200, 0.5);
    lineview21.backgroundColor = [UIColor grayColor];
    [btn2 addSubview:lineview21];
}


@end
