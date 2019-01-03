//
//  ViewController.m
//  BMingKitProject
//
//  Created by 北冥 on 2019/1/3.
//  Copyright © 2019 com.beiming.kit. All rights reserved.
//

#import "ViewController.h"
#import "BMDevice.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",[BMDevice getAPPVersion]);
}


@end
