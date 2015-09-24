//
//  ViewController.m
//  OLiNotifictionCenter
//
//  Created by OLi on 15/9/24.
//  Copyright © 2015年 OLi. All rights reserved.
//

#import "ViewController.h"
#import "OLiNotifictionCenterManage.h"

static NSString *const DemoNotification = @"DEMO";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [OLiNotifictionCenterManage addObserver:self selector:@selector(demo:) name:DemoNotification object:nil];
}

- (void)demo:(NSNotification *)noti {
    NSLog(@"noti = %@", noti);
}

- (IBAction)btnAction:(id)sender {
    [OLiNotifictionCenterManage postNotificationName:DemoNotification object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
