//
//  InputHandler.m
//  payment
//
//  Created by shunnamiki on 2021/07/14.
//

#import "InputHandler.h"

@implementation InputHandler
- (NSString *) inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithCString:inputChars encoding:(NSUTF8StringEncoding)];
    NSString *parsedStr = [InputHandler parseStr:inputString];
    
    return parsedStr;
}

+ (NSString *) parseStr: (NSString *) str {
    return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
