//
//  RetailBankingRewardsCatalog+Local.m
//  AnyPresence SDK
//

#import "APObject+Local.h"
#import "RetailBankingRewardsCatalog+Local.h"

@implementation RetailBankingRewardsCatalog (Local)

#pragma mark - Public

+ (NSArray *)allLocalWithOffset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"all" params:nil offset:offset limit:limit];
}

+ (NSArray *)exactMatchLocalWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"exact_match" params:params offset:offset limit:limit];
}

+ (NSArray *)rewardsCatalogLocalWithItemCategory:(NSString *)itemCategory offset:(NSUInteger)offset limit:(NSUInteger)limit {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    if (itemCategory) {
        [params setObject:itemCategory forKey:@"item_category"];
    }

    return [self queryLocal:@"rewards_catalog" params:params offset:offset limit:limit];
}

@end