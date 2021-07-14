//
//  PaypalPaymentService.m
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService
- (void)processPaymentAmount:(NSInteger *)num
{
    if(![self canProcessPayment]) {
        NSLog(@"Sorry, this payment cannot use now.");
        return;
    }
    NSLog(@"Paypal processed amount $%d", num);
    return;
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2) == 1;
}

@end
