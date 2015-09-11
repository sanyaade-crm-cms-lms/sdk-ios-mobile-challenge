//
//  CapitalMarketsActivity.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CapitalMarketsActivity.h"
#import "CapitalMarketsActivity$AP$.h"
#import "CapitalMarketsTrading.h"

@interface CapitalMarketsActivity ()

@property (nonatomic, strong) CapitalMarketsActivity$AP$ * internal;

@end

@implementation CapitalMarketsActivity

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

- (NSString *)activityType {
    return ThreadSafeReturn(^id{
        return self.internal.activityType;
    });
}

- (void)setActivityType:(NSString *)activityType {
    ThreadSafe(^{
        self.internal.activityType = activityType;
    });
}

- (NSArray *)citiAttendees {
    return ThreadSafeReturn(^id{
        return self.internal.citiAttendees;
    });
}

- (void)setCitiAttendees:(NSArray *)citiAttendees {
    ThreadSafe(^{
        self.internal.citiAttendees = citiAttendees;
    });
}

- (NSArray *)clientContacts {
    return ThreadSafeReturn(^id{
        return self.internal.clientContacts;
    });
}

- (void)setClientContacts:(NSArray *)clientContacts {
    ThreadSafe(^{
        self.internal.clientContacts = clientContacts;
    });
}

- (NSString *)clientId {
    return ThreadSafeReturn(^id{
        return self.internal.clientId;
    });
}

- (void)setClientId:(NSString *)clientId {
    ThreadSafe(^{
        self.internal.clientId = clientId;
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

- (NSString *)date {
    return ThreadSafeReturn(^id{
        return self.internal.date;
    });
}

- (void)setDate:(NSString *)date {
    ThreadSafe(^{
        self.internal.date = date;
    });
}

- (NSString *)region {
    return ThreadSafeReturn(^id{
        return self.internal.region;
    });
}

- (void)setRegion:(NSString *)region {
    ThreadSafe(^{
        self.internal.region = region;
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
