//
//  TestAPService.m
//  AnyPresence SDK
//

#import "XDataSource.h"
#import "APService+Internal.h"

@implementation TestAPService

+ (NSURL *)baseURL {
    return [NSURL URLWithString:@"http://baseURL/"];
}

+ (NSString *)verb:(APRequestVerb)verb {
    return @"ServiceVerb";
}

+ (NSDictionary *)httpHeaders {
    return @{@"ServiceHeaderKeyA":@"ServiceHeaderValueA",
             @"ServiceHeaderKeyB":@"ServiceHeaderValueB"};
}

+ (NSDictionary *)urlParameters {
    return @{@"ServiceURLParameterKeyA":@"ServiceURLParameterValueA",
             @"ServiceURLParameterKeyB":@"ServiceURLParameterValueB"};
}

@end
