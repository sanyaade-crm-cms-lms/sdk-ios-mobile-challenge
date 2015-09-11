//
//  CapitalMarketsActivity+Local.m
//  AnyPresence SDK
//

#import "APObject+Local.h"
#import "CapitalMarketsActivity+Local.h"

@implementation CapitalMarketsActivity (Local)

#pragma mark - Public

+ (NSArray *)allLocalWithOffset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"all" params:nil offset:offset limit:limit];
}

+ (NSArray *)exactMatchLocalWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"exact_match" params:params offset:offset limit:limit];
}

+ (NSArray *)activitiesLocalWithYear:(NSNumber *)year offset:(NSUInteger)offset limit:(NSUInteger)limit {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    if (year) {
        [params setObject:year forKey:@"year"];
    }

    return [self queryLocal:@"activities" params:params offset:offset limit:limit];
}

@end