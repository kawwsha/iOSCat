//
//  ViewController.m
//  iOSKitty
//
//  Created by Kasia McLellan on 12/2/18.
//  Copyright © 2018 KatherineMclellan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Really Old Way
    [self.testLabel setText:[NSString stringWithFormat:@"Hello Grandpa Cat"]];
    //Old Way
    [self.testLabel setText:@"Hello Kitty"];
    //New Way-- Use this way!
    self.testLabel.text = @"hello cat";
    self.testLabel.textAlignment = NSTextAlignmentCenter;
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
