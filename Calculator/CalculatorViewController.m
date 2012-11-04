//
//  CalculatorViewController.m
//  Calculator
//
//  Created by wxq std on 11/4/12.
//  Copyright (c) 2012 wxq std. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

@synthesize display = _display;

- (IBAction)digitPressed:(UIButton *)sender {
    NSString *digit = [sender currentTitle];
    NSLog(@"digit pressed = %@", digit);
    
    UILabel *myDisplay = self.display;
    NSString *currentText = myDisplay.text;
    NSString *newText = [currentText stringByAppendingString:digit];
    myDisplay.text=newText;
}

@end
