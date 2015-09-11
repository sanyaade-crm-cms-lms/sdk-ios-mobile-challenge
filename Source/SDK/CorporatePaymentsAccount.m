//
//  CorporatePaymentsAccount.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CorporatePaymentsAccount.h"
#import "CorporatePaymentsAccount$AP$.h"
#import "CorporatePayments.h"

@interface CorporatePaymentsAccount ()

@property (nonatomic, strong) CorporatePaymentsAccount$AP$ * internal;

@end

@implementation CorporatePaymentsAccount

#pragma mark - Data Source

+ (Class)dataSource {
    return [CorporatePayments class];
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

- (NSString *)accountName {
    return ThreadSafeReturn(^id{
        return self.internal.accountName;
    });
}

- (void)setAccountName:(NSString *)accountName {
    ThreadSafe(^{
        self.internal.accountName = accountName;
    });
}

- (NSDictionary *)baseCurrencyBalances {
    return ThreadSafeReturn(^id{
        return self.internal.baseCurrencyBalances;
    });
}

- (void)setBaseCurrencyBalances:(NSDictionary *)baseCurrencyBalances {
    ThreadSafe(^{
        self.internal.baseCurrencyBalances = baseCurrencyBalances;
    });
}

- (NSString *)branchName {
    return ThreadSafeReturn(^id{
        return self.internal.branchName;
    });
}

- (void)setBranchName:(NSString *)branchName {
    ThreadSafe(^{
        self.internal.branchName = branchName;
    });
}

- (NSString *)countryIsoCode {
    return ThreadSafeReturn(^id{
        return self.internal.countryIsoCode;
    });
}

- (void)setCountryIsoCode:(NSString *)countryIsoCode {
    ThreadSafe(^{
        self.internal.countryIsoCode = countryIsoCode;
    });
}

- (NSString *)localCurrencyIsoCode {
    return ThreadSafeReturn(^id{
        return self.internal.localCurrencyIsoCode;
    });
}

- (void)setLocalCurrencyIsoCode:(NSString *)localCurrencyIsoCode {
    ThreadSafe(^{
        self.internal.localCurrencyIsoCode = localCurrencyIsoCode;
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

- (NSString *)status {
    return ThreadSafeReturn(^id{
        return self.internal.status;
    });
}

- (void)setStatus:(NSString *)status {
    ThreadSafe(^{
        self.internal.status = status;
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
