//
//  RetailBankingAccountFundTransfer.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingAccountFundTransfer.h"
#import "RetailBankingAccountFundTransfer$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingAccountFundTransfer ()

@property (nonatomic, strong) RetailBankingAccountFundTransfer$AP$ * internal;

@end

@implementation RetailBankingAccountFundTransfer

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

- (NSNumber *)amount {
    return ThreadSafeReturn(^id{
        return self.internal.amount;
    });
}

- (void)setAmount:(NSNumber *)amount {
    ThreadSafe(^{
        self.internal.amount = amount;
    });
}

- (NSString *)currency {
    return ThreadSafeReturn(^id{
        return self.internal.currency;
    });
}

- (void)setCurrency:(NSString *)currency {
    ThreadSafe(^{
        self.internal.currency = currency;
    });
}

- (NSString *)destinationAccountId {
    return ThreadSafeReturn(^id{
        return self.internal.destinationAccountId;
    });
}

- (void)setDestinationAccountId:(NSString *)destinationAccountId {
    ThreadSafe(^{
        self.internal.destinationAccountId = destinationAccountId;
    });
}

- (NSString *)destinationId {
    return ThreadSafeReturn(^id{
        return self.internal.destinationId;
    });
}

- (void)setDestinationId:(NSString *)destinationId {
    ThreadSafe(^{
        self.internal.destinationId = destinationId;
    });
}

- (NSString *)memo {
    return ThreadSafeReturn(^id{
        return self.internal.memo;
    });
}

- (void)setMemo:(NSString *)memo {
    ThreadSafe(^{
        self.internal.memo = memo;
    });
}

- (NSString *)payeeDesc {
    return ThreadSafeReturn(^id{
        return self.internal.payeeDesc;
    });
}

- (void)setPayeeDesc:(NSString *)payeeDesc {
    ThreadSafe(^{
        self.internal.payeeDesc = payeeDesc;
    });
}

- (NSString *)payeeId {
    return ThreadSafeReturn(^id{
        return self.internal.payeeId;
    });
}

- (void)setPayeeId:(NSString *)payeeId {
    ThreadSafe(^{
        self.internal.payeeId = payeeId;
    });
}

- (NSString *)payeeType {
    return ThreadSafeReturn(^id{
        return self.internal.payeeType;
    });
}

- (void)setPayeeType:(NSString *)payeeType {
    ThreadSafe(^{
        self.internal.payeeType = payeeType;
    });
}

- (NSNumber *)paymentType {
    return ThreadSafeReturn(^id{
        return self.internal.paymentType;
    });
}

- (void)setPaymentType:(NSNumber *)paymentType {
    ThreadSafe(^{
        self.internal.paymentType = paymentType;
    });
}

- (NSString *)referenceNumber {
    return ThreadSafeReturn(^id{
        return self.internal.referenceNumber;
    });
}

- (void)setReferenceNumber:(NSString *)referenceNumber {
    ThreadSafe(^{
        self.internal.referenceNumber = referenceNumber;
    });
}

- (NSString *)transactionDate {
    return ThreadSafeReturn(^id{
        return self.internal.transactionDate;
    });
}

- (void)setTransactionDate:(NSString *)transactionDate {
    ThreadSafe(^{
        self.internal.transactionDate = transactionDate;
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
