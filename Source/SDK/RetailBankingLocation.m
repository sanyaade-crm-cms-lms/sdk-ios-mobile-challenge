//
//  RetailBankingLocation.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingLocation.h"
#import "RetailBankingLocation$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingLocation ()

@property (nonatomic, strong) RetailBankingLocation$AP$ * internal;

@end

@implementation RetailBankingLocation

#pragma mark - Data Source

+ (Class)dataSource {
    return [RetailBanking class];
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

- (NSString *)addressLineOne {
    return ThreadSafeReturn(^id{
        return self.internal.addressLineOne;
    });
}

- (void)setAddressLineOne:(NSString *)addressLineOne {
    ThreadSafe(^{
        self.internal.addressLineOne = addressLineOne;
    });
}

- (NSString *)addressLineTwo {
    return ThreadSafeReturn(^id{
        return self.internal.addressLineTwo;
    });
}

- (void)setAddressLineTwo:(NSString *)addressLineTwo {
    ThreadSafe(^{
        self.internal.addressLineTwo = addressLineTwo;
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

- (NSString *)comments {
    return ThreadSafeReturn(^id{
        return self.internal.comments;
    });
}

- (void)setComments:(NSString *)comments {
    ThreadSafe(^{
        self.internal.comments = comments;
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

- (NSString *)externalLink {
    return ThreadSafeReturn(^id{
        return self.internal.externalLink;
    });
}

- (void)setExternalLink:(NSString *)externalLink {
    ThreadSafe(^{
        self.internal.externalLink = externalLink;
    });
}

- (NSString *)latitude {
    return ThreadSafeReturn(^id{
        return self.internal.latitude;
    });
}

- (void)setLatitude:(NSString *)latitude {
    ThreadSafe(^{
        self.internal.latitude = latitude;
    });
}

- (NSString *)locationType {
    return ThreadSafeReturn(^id{
        return self.internal.locationType;
    });
}

- (void)setLocationType:(NSString *)locationType {
    ThreadSafe(^{
        self.internal.locationType = locationType;
    });
}

- (NSString *)longitude {
    return ThreadSafeReturn(^id{
        return self.internal.longitude;
    });
}

- (void)setLongitude:(NSString *)longitude {
    ThreadSafe(^{
        self.internal.longitude = longitude;
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

- (NSString *)postalCode {
    return ThreadSafeReturn(^id{
        return self.internal.postalCode;
    });
}

- (void)setPostalCode:(NSString *)postalCode {
    ThreadSafe(^{
        self.internal.postalCode = postalCode;
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
