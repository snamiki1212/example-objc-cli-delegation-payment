//
//  PaymentGateway.m
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
- (void) processPaymentAmount:(NSInteger *) num
{
    [self.paymentDelegate processPaymentAmount: num];
    return;
}
@end
