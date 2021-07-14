//
//  InputHandler.h
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject
- (NSString *) inputForPrompt:(NSString *) promptString;
+ (NSString *) parseStr: (NSString *) str;
@end

NS_ASSUME_NONNULL_END
