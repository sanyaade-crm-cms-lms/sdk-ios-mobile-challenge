//
//  CorporatePaymentsCrossBorderFxQuote+Local.m
//  AnyPresence SDK
//

#import "APObject+Local.h"
#import "CorporatePaymentsCrossBorderFxQuote+Local.h"

@implementation CorporatePaymentsCrossBorderFxQuote (Local)

#pragma mark - Public

+ (NSArray *)allLocalWithOffset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"all" params:nil offset:offset limit:limit];
}

+ (NSArray *)exactMatchLocalWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"exact_match" params:params offset:offset limit:limit];
}

@end