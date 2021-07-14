//
//  main.m
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSInteger randomNum = arc4random_uniform(900) + 100; // TODO: refactor getRandom(100, 1000)
        NSString *msg = [[NSString alloc] initWithFormat: @"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method:\n1: Paypal\n2: Stripe\n3: Amazon\n", randomNum];
        NSLog(@"%@", msg);
        
        // input
        InputHandler *inputHandler = [InputHandler new];
        NSString *userInputStr = [inputHandler inputForPrompt: msg];
        int userInputNum = [userInputStr intValue];
        NSLog(@"%d", userInputNum);
        
        // payment
        PaymentGateway *payment = [PaymentGateway new];
        [payment processPaymentAmount: randomNum];
    }
    return 0;
}
