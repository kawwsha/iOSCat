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
@property (weak, nonatomic) IBOutlet UIButton *testButton;
@property (nonatomic, assign) NSInteger count;
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
    //Button
    [self.testButton setTitle:@"Add more kitties" forState:UIControlStateNormal];
    //Initalize
    self.count = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)didTapButton:(id)sender {
    self.count += 1;
    self.testLabel.text = [NSString stringWithFormat:@"%ld", self.count];
}

@end
