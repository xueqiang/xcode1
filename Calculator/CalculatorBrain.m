//
//  CalculatorBrain.m
//  Calculator
//
//  Created by wxq std on 11/7/12.
//  Copyright (c) 2012 wxq std. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()

@property (nonatomic, strong) NSMutableArray *operandStack;

@end

@implementation CalculatorBrain

@synthesize operandStack=_operandStack;

- (NSMutableArray *) operandStack

{
    if(_operandStack==nil)
    {
        _operandStack=[[NSMutableArray alloc] init];
    }
    return _operandStack;
}

- (void) setOperandStack:(NSMutableArray *)operandStack
{
    _operandStack = operandStack;
}

- (void) pushOperand: (double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double) performOperation: (NSString *)operation
{

}

@end
