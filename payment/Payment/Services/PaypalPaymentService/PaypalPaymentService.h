//
//  PaypalPaymentService.h
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaypalPaymentService : NSObject<PaymentDelegate>

// for PaymentDelegate
- (void) processPaymentAmount:(NSInteger *) num;
@end

NS_ASSUME_NONNULL_END
