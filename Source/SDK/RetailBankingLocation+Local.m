//
//  RetailBankingLocation+Local.m
//  AnyPresence SDK
//

#import "APObject+Local.h"
#import "RetailBankingLocation+Local.h"

@implementation RetailBankingLocation (Local)

#pragma mark - Public

+ (NSArray *)allLocalWithOffset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"all" params:nil offset:offset limit:limit];
}

+ (NSArray *)exactMatchLocalWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"exact_match" params:params offset:offset limit:limit];
}

+ (NSArray *)locationsLocalWithLatitude:(NSString *)latitude longitude:(NSString *)longitude radius:(NSString *)radius radiusUom:(NSString *)radiusUom locationType:(NSString *)locationType address:(NSString *)address city:(NSString *)city state:(NSString *)state postalCode:(NSString *)postalCode offset:(NSUInteger)offset limit:(NSUInteger)limit {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:9];
    if (latitude) {
        [params setObject:latitude forKey:@"latitude"];
    }

    if (longitude) {
        [params setObject:longitude forKey:@"longitude"];
    }

    if (radius) {
        [params setObject:radius forKey:@"radius"];
    }

    if (radiusUom) {
        [params setObject:radiusUom forKey:@"radius_uom"];
    }

    if (locationType) {
        [params setObject:locationType forKey:@"location_type"];
    }

    if (address) {
        [params setObject:address forKey:@"address"];
    }

    if (city) {
        [params setObject:city forKey:@"city"];
    }

    if (state) {
        [params setObject:state forKey:@"state"];
    }

    if (postalCode) {
        [params setObject:postalCode forKey:@"postal_code"];
    }

    return [self queryLocal:@"locations" params:params offset:offset limit:limit];
}

@end