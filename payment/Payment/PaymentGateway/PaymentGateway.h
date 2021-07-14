//
//  PaymentGateway.h
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate
@end

@interface PaymentGateway : NSObject
- (void) processPaymentAmount:(NSInteger *) num;
@end

NS_ASSUME_NONNULL_END
