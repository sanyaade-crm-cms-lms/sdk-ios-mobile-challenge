//
//  CapitalMarketsContact+Local.m
//  AnyPresence SDK
//

#import "APObject+Local.h"
#import "CapitalMarketsContact+Local.h"

@implementation CapitalMarketsContact (Local)

#pragma mark - Public

+ (NSArray *)allLocalWithOffset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"all" params:nil offset:offset limit:limit];
}

+ (NSArray *)exactMatchLocalWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"exact_match" params:params offset:offset limit:limit];
}

+ (NSArray *)contactsLocalWithClientName:(NSString *)clientName year:(NSNumber *)year offset:(NSUInteger)offset limit:(NSUInteger)limit {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    if (clientName) {
        [params setObject:clientName forKey:@"client_name"];
    }

    if (year) {
        [params setObject:year forKey:@"year"];
    }

    return [self queryLocal:@"contacts" params:params offset:offset limit:limit];
}

@end