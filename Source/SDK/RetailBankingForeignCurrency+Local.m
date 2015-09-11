//
//  RetailBankingForeignCurrency+Local.m
//  AnyPresence SDK
//

#import "APObject+Local.h"
#import "RetailBankingForeignCurrency+Local.h"

@implementation RetailBankingForeignCurrency (Local)

#pragma mark - Public

+ (NSArray *)allLocalWithOffset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"all" params:nil offset:offset limit:limit];
}

+ (NSArray *)exactMatchLocalWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"exact_match" params:params offset:offset limit:limit];
}

+ (NSArray *)foreignCurrencyLocalWithFromCurrency:(NSString *)fromCurrency toCurrency:(NSString *)toCurrency offset:(NSUInteger)offset limit:(NSUInteger)limit {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    if (fromCurrency) {
        [params setObject:fromCurrency forKey:@"from_currency"];
    }

    if (toCurrency) {
        [params setObject:toCurrency forKey:@"to_currency"];
    }

    return [self queryLocal:@"foreign_currency" params:params offset:offset limit:limit];
}

@end