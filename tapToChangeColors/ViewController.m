//
//  ViewController.m
//  tapToChangeColors
//
//  Created by nao on 2014/02/16.
//  Copyright (c) 2014年 showandtell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int colorNumber;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped)];
    
    [self.view addGestureRecognizer:tapGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// ビューがタップされたとき
- (void)tapped
{
    if (colorNumber == 0) {
        self.view.backgroundColor = [UIColor greenColor];
        colorNumber ++;
    } else if (colorNumber == 1) {
        self.view.backgroundColor = [UIColor redColor];
        colorNumber ++;
    } else {
        self.view.backgroundColor = [UIColor blueColor];
        colorNumber = 0;
    }
}

@end