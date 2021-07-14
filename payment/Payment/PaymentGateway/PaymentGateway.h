//
//  PaymentGateway.h
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate
- (void) processPaymentAmount:(NSInteger *) num;
@end

@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentDelegate>paymentDelegate;
- (void) processPaymentAmount:(NSInteger *) num;
@end

NS_ASSUME_NONNULL_END
