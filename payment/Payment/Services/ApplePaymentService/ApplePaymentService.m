//
//  ApplePaymentService.m
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
- (void)processPaymentAmount:(NSInteger *)num
{
    if(![self canProcessPayment]) {
        NSLog(@"Sorry, this payment cannot use now.");
        return;
    }
    NSLog(@"Apple processed amount $%d", num);
    return;
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2) == 1;
}
@end
