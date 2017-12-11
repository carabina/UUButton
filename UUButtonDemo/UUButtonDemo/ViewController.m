//
//  ViewController.m
//  UUButtonDemo
//
//  Created by LEA on 2017/12/8.
//  Copyright © 2017年 LEA. All rights reserved.
//

#import "ViewController.h"
#import "UUButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGFloat bt_margin_x = 40;
    CGFloat bt_width = (self.view.bounds.size.width - 3 * bt_margin_x) / 2.0;
    CGFloat bt_height = bt_width;
    CGFloat bt_margin_y = (self.view.bounds.size.height - 4 * bt_height) / 5.0;
    CGFloat bt_orign_x = bt_margin_x;
    CGFloat bt_origin_y = bt_margin_y;

    for (int i = 0; i < 8; i ++) {
        UUButton *btn = [[UUButton alloc] initWithFrame:CGRectMake(bt_orign_x, bt_origin_y, bt_width, bt_height)];
        btn.spacing = 5;
        btn.contentAlignment = i;
        btn.backgroundColor = [UIColor lightGrayColor];
        [btn setTitle:@"闭嘴" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"emotion"] forState:UIControlStateNormal];

        bt_orign_x += bt_margin_x + bt_width;
        if ((i + 1) % 2 == 0) {
            bt_orign_x = bt_margin_x;
            bt_origin_y += bt_margin_y + bt_height;
        }
        [self.view addSubview:btn];
    }
}

#pragma mark -
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
