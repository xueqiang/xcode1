//
//  CalculatorViewController.m
//  Calculator
//
//  Created by wxq std on 11/4/12.
//  Copyright (c) 2012 wxq std. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;

@end

@implementation CalculatorViewController

@synthesize display = _display;
@synthesize userIsInTheMiddleOfEnteringANumber=_userIsInTheMiddleOfEnteringANumber;

- (IBAction)digitPressed:(UIButton *)sender {
    NSString *digit = sender.currentTitle;
    NSLog(@"digit pressed = %@", digit);
    
//    UILabel *myDisplay = self.display;
//    NSString *currentText = myDisplay.text;
//    NSString *newText = [currentText stringByAppendingString:digit];
//    myDisplay.text=newText;
    if(self.userIsInTheMiddleOfEnteringANumber){
        self.display.text=[self.display.text stringByAppendingString:digit];
    }else{
        self.display.text=digit;
        self.userIsInTheMiddleOfEnteringANumber=TRUE;
    }
    
}
- (IBAction)operationPressed:(id)sender {
}
- (IBAction)enterPressed {
}

@end
