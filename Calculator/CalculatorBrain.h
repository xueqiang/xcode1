//
//  CalculatorBrain.h
//  Calculator
//
//  Created by wxq std on 11/7/12.
//  Copyright (c) 2012 wxq std. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject
- (void) pushOperand: (double)operand;
- (double) performOperation: (NSString *)operation;

@end
