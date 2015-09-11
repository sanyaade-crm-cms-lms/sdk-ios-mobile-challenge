//
//  RetailBankingAccountTransaction.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingAccountTransaction.h"
#import "RetailBankingAccountTransaction$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingAccountTransaction ()

@property (nonatomic, strong) RetailBankingAccountTransaction$AP$ * internal;

@end

@implementation RetailBankingAccountTransaction

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

- (NSString *)activity {
    return ThreadSafeReturn(^id{
        return self.internal.activity;
    });
}

- (void)setActivity:(NSString *)activity {
    ThreadSafe(^{
        self.internal.activity = activity;
    });
}

- (NSString *)checkImageEligible {
    return ThreadSafeReturn(^id{
        return self.internal.checkImageEligible;
    });
}

- (void)setCheckImageEligible:(NSString *)checkImageEligible {
    ThreadSafe(^{
        self.internal.checkImageEligible = checkImageEligible;
    });
}

- (NSString *)datePosted {
    return ThreadSafeReturn(^id{
        return self.internal.datePosted;
    });
}

- (void)setDatePosted:(NSString *)datePosted {
    ThreadSafe(^{
        self.internal.datePosted = datePosted;
    });
}

- (NSString *)formattedAmount {
    return ThreadSafeReturn(^id{
        return self.internal.formattedAmount;
    });
}

- (void)setFormattedAmount:(NSString *)formattedAmount {
    ThreadSafe(^{
        self.internal.formattedAmount = formattedAmount;
    });
}

- (NSString *)pendingDate {
    return ThreadSafeReturn(^id{
        return self.internal.pendingDate;
    });
}

- (void)setPendingDate:(NSString *)pendingDate {
    ThreadSafe(^{
        self.internal.pendingDate = pendingDate;
    });
}

- (NSNumber *)transactionAmount {
    return ThreadSafeReturn(^id{
        return self.internal.transactionAmount;
    });
}

- (void)setTransactionAmount:(NSNumber *)transactionAmount {
    ThreadSafe(^{
        self.internal.transactionAmount = transactionAmount;
    });
}

- (NSString *)transactionDescription {
    return ThreadSafeReturn(^id{
        return self.internal.transactionDescription;
    });
}

- (void)setTransactionDescription:(NSString *)transactionDescription {
    ThreadSafe(^{
        self.internal.transactionDescription = transactionDescription;
    });
}

- (NSString *)transactionIdentifier {
    return ThreadSafeReturn(^id{
        return self.internal.transactionIdentifier;
    });
}

- (void)setTransactionIdentifier:(NSString *)transactionIdentifier {
    ThreadSafe(^{
        self.internal.transactionIdentifier = transactionIdentifier;
    });
}

- (NSString *)transactionIndex {
    return ThreadSafeReturn(^id{
        return self.internal.transactionIndex;
    });
}

- (void)setTransactionIndex:(NSString *)transactionIndex {
    ThreadSafe(^{
        self.internal.transactionIndex = transactionIndex;
    });
}

- (NSString *)transactionType {
    return ThreadSafeReturn(^id{
        return self.internal.transactionType;
    });
}

- (void)setTransactionType:(NSString *)transactionType {
    ThreadSafe(^{
        self.internal.transactionType = transactionType;
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
