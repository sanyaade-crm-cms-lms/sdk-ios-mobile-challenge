//
//  RetailBankingLogin.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingLogin.h"
#import "RetailBankingLogin$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingLogin ()

@property (nonatomic, strong) RetailBankingLogin$AP$ * internal;

@end

@implementation RetailBankingLogin

#pragma mark - Data Source

+ (Class)dataSource {
    return [RetailBanking class];
}

#pragma mark - Public

- (NSString *)token {
    return ThreadSafeReturn(^id{
        return self.internal.token;
    });
}

- (void)setToken:(NSString *)token {
    ThreadSafe(^{
        self.internal.token = token;
    });
}

- (NSString *)isEligibleForOffers {
    return ThreadSafeReturn(^id{
        return self.internal.isEligibleForOffers;
    });
}

- (void)setIsEligibleForOffers:(NSString *)isEligibleForOffers {
    ThreadSafe(^{
        self.internal.isEligibleForOffers = isEligibleForOffers;
    });
}

- (NSString *)isPersonToPersonRequired {
    return ThreadSafeReturn(^id{
        return self.internal.isPersonToPersonRequired;
    });
}

- (void)setIsPersonToPersonRequired:(NSString *)isPersonToPersonRequired {
    ThreadSafe(^{
        self.internal.isPersonToPersonRequired = isPersonToPersonRequired;
    });
}

- (NSString *)password {
    return ThreadSafeReturn(^id{
        return self.internal.password;
    });
}

- (void)setPassword:(NSString *)password {
    ThreadSafe(^{
        self.internal.password = password;
    });
}

- (NSString *)username {
    return ThreadSafeReturn(^id{
        return self.internal.username;
    });
}

- (void)setUsername:(NSString *)username {
    ThreadSafe(^{
        self.internal.username = username;
    });
}

#pragma mark - NSObject

- (id)initWithInternal:(APInternalObject *)internal {
    if ((self = [super initWithInternal:internal])) {
        [self.class remoteConfig].remoteIDProperty = @"token";
        
    ThreadSafe(^{
    });
    }
    return self;
}

@end
