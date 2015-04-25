#import <Foundation/Foundation.h>

@interface NSString (Utils)

- (NSString *)stringByTrimmingLeadingCharactersInSet:(NSCharacterSet *)characterSet;

- (NSString *)stringByTrimmingTrailingCharactersInSet:(NSCharacterSet *)characterSet;

-(BOOL)validateEmail;

-(BOOL)validateWithRegexp:(NSString *)regexpString;

@end