//
//  main.m
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSInteger randomNum = arc4random_uniform(900) + 100 + 1; // TODO: refactor getRandom(100, 1000)
        NSString *msg = [[NSString alloc] initWithFormat: @"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method:\n1: Paypal\n2: Stripe\n3: Amazon\n4: ApplePay\n", randomNum];
        
        // input
        InputHandler *inputHandler = [InputHandler new];
        NSString *userInputStr = [inputHandler inputForPrompt: msg];
        int userInputNum = [userInputStr intValue];
        
        // payment
        PaypalPaymentService *paypalService = [PaypalPaymentService new];
        AmazonPaymentService *amazonService = [AmazonPaymentService new];
        StripePaymentService *stripeService = [StripePaymentService new];
        ApplePaymentService *appleService = [ApplePaymentService new];
        PaymentGateway *paymentGateway = [PaymentGateway new];
        switch (userInputNum) {
            case 1:
                paymentGateway.paymentDelegate = paypalService;
                break;

            case 2:
                paymentGateway.paymentDelegate = stripeService;
                break;

            case 3:
                paymentGateway.paymentDelegate = amazonService;
                break;

            case 4:
                paymentGateway.paymentDelegate = appleService;
                break;

            default:
                NSLog(@"Unexpected payment type");
                exit(0);
                break;
        }
        
        [paymentGateway processPaymentAmount: randomNum];
    }
    return 0;
}


