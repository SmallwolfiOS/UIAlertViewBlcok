//
//  ViewController.m
//  UIAlertViewBlcok
//
//  Created by Jason on 16/6/21.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+Block.h"

@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:<#(nullable NSString *)#> message:<#(nullable NSString *)#> delegate:<#(nullable id)#> cancelButtonTitle:<#(nullable NSString *)#> otherButtonTitles:<#(nullable NSString *), ...#>, nil
//    [alertView show];
    [UIAlertView initWithTitle:@"sss" message:@"sadasda" cancelButtonTitle:@"dasdas" otherButtonTitles:@[@"d"] clickAtIndex:^(NSInteger buttonIndex) {
        NSLog(@"%ld",(long)buttonIndex);
    }];
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
