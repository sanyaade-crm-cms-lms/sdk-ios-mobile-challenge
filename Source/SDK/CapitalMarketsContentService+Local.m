//
//  CapitalMarketsContentService+Local.m
//  AnyPresence SDK
//

#import "APObject+Local.h"
#import "CapitalMarketsContentService+Local.h"

@implementation CapitalMarketsContentService (Local)

#pragma mark - Public

+ (NSArray *)allLocalWithOffset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"all" params:nil offset:offset limit:limit];
}

+ (NSArray *)exactMatchLocalWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"exact_match" params:params offset:offset limit:limit];
}

+ (NSArray *)contentServicesLocalWithType:(NSString *)type offset:(NSUInteger)offset limit:(NSUInteger)limit {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    if (type) {
        [params setObject:type forKey:@"type"];
    }

    return [self queryLocal:@"content_services" params:params offset:offset limit:limit];
}

@end