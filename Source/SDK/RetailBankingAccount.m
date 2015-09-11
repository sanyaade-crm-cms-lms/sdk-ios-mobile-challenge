//
//  RetailBankingAccount.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingAccount.h"
#import "RetailBankingAccount$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingAccount ()

@property (nonatomic, strong) RetailBankingAccount$AP$ * internal;

@end

@implementation RetailBankingAccount

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

- (NSString *)accountStatus {
    return ThreadSafeReturn(^id{
        return self.internal.accountStatus;
    });
}

- (void)setAccountStatus:(NSString *)accountStatus {
    ThreadSafe(^{
        self.internal.accountStatus = accountStatus;
    });
}

- (NSDictionary *)balances {
    return ThreadSafeReturn(^id{
        return self.internal.balances;
    });
}

- (void)setBalances:(NSDictionary *)balances {
    ThreadSafe(^{
        self.internal.balances = balances;
    });
}

- (NSNumber *)categoryCode {
    return ThreadSafeReturn(^id{
        return self.internal.categoryCode;
    });
}

- (void)setCategoryCode:(NSNumber *)categoryCode {
    ThreadSafe(^{
        self.internal.categoryCode = categoryCode;
    });
}

- (NSString *)copsIndicator {
    return ThreadSafeReturn(^id{
        return self.internal.copsIndicator;
    });
}

- (void)setCopsIndicator:(NSString *)copsIndicator {
    ThreadSafe(^{
        self.internal.copsIndicator = copsIndicator;
    });
}

- (NSString *)detailsExist {
    return ThreadSafeReturn(^id{
        return self.internal.detailsExist;
    });
}

- (void)setDetailsExist:(NSString *)detailsExist {
    ThreadSafe(^{
        self.internal.detailsExist = detailsExist;
    });
}

- (NSString *)displayAcctNo {
    return ThreadSafeReturn(^id{
        return self.internal.displayAcctNo;
    });
}

- (void)setDisplayAcctNo:(NSString *)displayAcctNo {
    ThreadSafe(^{
        self.internal.displayAcctNo = displayAcctNo;
    });
}

- (NSString *)isDestinationAccount {
    return ThreadSafeReturn(^id{
        return self.internal.isDestinationAccount;
    });
}

- (void)setIsDestinationAccount:(NSString *)isDestinationAccount {
    ThreadSafe(^{
        self.internal.isDestinationAccount = isDestinationAccount;
    });
}

- (NSString *)isSourceAccount {
    return ThreadSafeReturn(^id{
        return self.internal.isSourceAccount;
    });
}

- (void)setIsSourceAccount:(NSString *)isSourceAccount {
    ThreadSafe(^{
        self.internal.isSourceAccount = isSourceAccount;
    });
}

- (NSDictionary *)msgs {
    return ThreadSafeReturn(^id{
        return self.internal.msgs;
    });
}

- (void)setMsgs:(NSDictionary *)msgs {
    ThreadSafe(^{
        self.internal.msgs = msgs;
    });
}

- (NSString *)offersIndicator {
    return ThreadSafeReturn(^id{
        return self.internal.offersIndicator;
    });
}

- (void)setOffersIndicator:(NSString *)offersIndicator {
    ThreadSafe(^{
        self.internal.offersIndicator = offersIndicator;
    });
}

- (NSString *)productCurrency {
    return ThreadSafeReturn(^id{
        return self.internal.productCurrency;
    });
}

- (void)setProductCurrency:(NSString *)productCurrency {
    ThreadSafe(^{
        self.internal.productCurrency = productCurrency;
    });
}

- (NSString *)productDescription {
    return ThreadSafeReturn(^id{
        return self.internal.productDescription;
    });
}

- (void)setProductDescription:(NSString *)productDescription {
    ThreadSafe(^{
        self.internal.productDescription = productDescription;
    });
}

- (NSNumber *)productType {
    return ThreadSafeReturn(^id{
        return self.internal.productType;
    });
}

- (void)setProductType:(NSNumber *)productType {
    ThreadSafe(^{
        self.internal.productType = productType;
    });
}

- (NSString *)txnExist {
    return ThreadSafeReturn(^id{
        return self.internal.txnExist;
    });
}

- (void)setTxnExist:(NSString *)txnExist {
    ThreadSafe(^{
        self.internal.txnExist = txnExist;
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
