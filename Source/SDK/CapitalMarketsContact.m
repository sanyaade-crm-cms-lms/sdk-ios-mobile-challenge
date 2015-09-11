//
//  CapitalMarketsContact.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CapitalMarketsContact.h"
#import "CapitalMarketsContact$AP$.h"
#import "CapitalMarketsTrading.h"

@interface CapitalMarketsContact ()

@property (nonatomic, strong) CapitalMarketsContact$AP$ * internal;

@end

@implementation CapitalMarketsContact

#pragma mark - Data Source

+ (Class)dataSource {
    return [CapitalMarketsTrading class];
}

#pragma mark - Public

- (NSString *)id {
    return ThreadSafeReturn(^id{
        return self.internal.id;
    });
}

- (void)setId:(NSString *)id {
    ThreadSafe(^{
        self.internal.id = id;
    });
}

- (NSString *)address {
    return ThreadSafeReturn(^id{
        return self.internal.address;
    });
}

- (void)setAddress:(NSString *)address {
    ThreadSafe(^{
        self.internal.address = address;
    });
}

- (NSString *)city {
    return ThreadSafeReturn(^id{
        return self.internal.city;
    });
}

- (void)setCity:(NSString *)city {
    ThreadSafe(^{
        self.internal.city = city;
    });
}

- (NSString *)clientName {
    return ThreadSafeReturn(^id{
        return self.internal.clientName;
    });
}

- (void)setClientName:(NSString *)clientName {
    ThreadSafe(^{
        self.internal.clientName = clientName;
    });
}

- (NSString *)country {
    return ThreadSafeReturn(^id{
        return self.internal.country;
    });
}

- (void)setCountry:(NSString *)country {
    ThreadSafe(^{
        self.internal.country = country;
    });
}

- (NSString *)email {
    return ThreadSafeReturn(^id{
        return self.internal.email;
    });
}

- (void)setEmail:(NSString *)email {
    ThreadSafe(^{
        self.internal.email = email;
    });
}

- (NSString *)jobRole {
    return ThreadSafeReturn(^id{
        return self.internal.jobRole;
    });
}

- (void)setJobRole:(NSString *)jobRole {
    ThreadSafe(^{
        self.internal.jobRole = jobRole;
    });
}

- (NSString *)jobTitle {
    return ThreadSafeReturn(^id{
        return self.internal.jobTitle;
    });
}

- (void)setJobTitle:(NSString *)jobTitle {
    ThreadSafe(^{
        self.internal.jobTitle = jobTitle;
    });
}

- (NSString *)name {
    return ThreadSafeReturn(^id{
        return self.internal.name;
    });
}

- (void)setName:(NSString *)name {
    ThreadSafe(^{
        self.internal.name = name;
    });
}

- (NSString *)phone {
    return ThreadSafeReturn(^id{
        return self.internal.phone;
    });
}

- (void)setPhone:(NSString *)phone {
    ThreadSafe(^{
        self.internal.phone = phone;
    });
}

- (NSString *)state {
    return ThreadSafeReturn(^id{
        return self.internal.state;
    });
}

- (void)setState:(NSString *)state {
    ThreadSafe(^{
        self.internal.state = state;
    });
}

- (NSNumber *)year {
    return ThreadSafeReturn(^id{
        return self.internal.year;
    });
}

- (void)setYear:(NSNumber *)year {
    ThreadSafe(^{
        self.internal.year = year;
    });
}

#pragma mark - NSObject

- (id)initWithInternal:(APInternalObject *)internal {
    if ((self = [super initWithInternal:internal])) {
        [self.class remoteConfig].remoteIDProperty = @"id";
        
    ThreadSafe(^{
    });
    }
    return self;
}

@end
