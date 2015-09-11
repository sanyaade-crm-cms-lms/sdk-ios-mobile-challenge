//
//  RetailBankingAccountBalance.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingAccountBalance.h"
#import "RetailBankingAccountBalance$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingAccountBalance ()

@property (nonatomic, strong) RetailBankingAccountBalance$AP$ * internal;

@end

@implementation RetailBankingAccountBalance

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

- (NSString *)accountId {
    return ThreadSafeReturn(^id{
        return self.internal.accountId;
    });
}

- (void)setAccountId:(NSString *)accountId {
    ThreadSafe(^{
        self.internal.accountId = accountId;
    });
}

- (NSString *)balanceType {
    return ThreadSafeReturn(^id{
        return self.internal.balanceType;
    });
}

- (void)setBalanceType:(NSString *)balanceType {
    ThreadSafe(^{
        self.internal.balanceType = balanceType;
    });
}

- (NSNumber *)value {
    return ThreadSafeReturn(^id{
        return self.internal.value;
    });
}

- (void)setValue:(NSNumber *)value {
    ThreadSafe(^{
        self.internal.value = value;
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
