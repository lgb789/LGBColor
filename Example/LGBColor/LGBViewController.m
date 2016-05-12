//
//  LGBViewController.m
//  LGBColor
//
//  Created by lgb789 on 05/12/2016.
//  Copyright (c) 2016 lgb789. All rights reserved.
//

#import "LGBViewController.h"
#import "UIColor+lgb_color.h"

@interface LGBViewController ()

@end

@implementation LGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //    self.view.backgroundColor = [UIColor blackColor];
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(100, 10, 100, 100)];
    v.backgroundColor = [UIColor lgb_colorFromHexCode:@"#090ab30"];
    [self.view addSubview:v];
    
    
    UIView *v1 = [[UIView alloc] initWithFrame:CGRectMake(100, CGRectGetMaxY(v.frame) + 10, 100, 100)];
    v1.backgroundColor = [UIColor lgb_colorWithRed:120 green:12 blue:32 alpha:1];
    [self.view addSubview:v1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
