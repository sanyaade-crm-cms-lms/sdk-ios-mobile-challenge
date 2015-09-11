//
//  CapitalMarketsRevenue+Local.m
//  AnyPresence SDK
//

#import "APObject+Local.h"
#import "CapitalMarketsRevenue+Local.h"

@implementation CapitalMarketsRevenue (Local)

#pragma mark - Public

+ (NSArray *)allLocalWithOffset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"all" params:nil offset:offset limit:limit];
}

+ (NSArray *)exactMatchLocalWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"exact_match" params:params offset:offset limit:limit];
}

+ (NSArray *)revenuesLocalWithRegion:(NSString *)region year:(NSNumber *)year offset:(NSUInteger)offset limit:(NSUInteger)limit {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    if (region) {
        [params setObject:region forKey:@"region"];
    }

    if (year) {
        [params setObject:year forKey:@"year"];
    }

    return [self queryLocal:@"revenues" params:params offset:offset limit:limit];
}

@end