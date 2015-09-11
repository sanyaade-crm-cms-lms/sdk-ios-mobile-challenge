//
//  RetailBankingPayee.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingPayee.h"
#import "RetailBankingPayee$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingPayee ()

@property (nonatomic, strong) RetailBankingPayee$AP$ * internal;

@end

@implementation RetailBankingPayee

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

- (NSArray *)addPayeeDetails {
    return ThreadSafeReturn(^id{
        return self.internal.addPayeeDetails;
    });
}

- (void)setAddPayeeDetails:(NSArray *)addPayeeDetails {
    ThreadSafe(^{
        self.internal.addPayeeDetails = addPayeeDetails;
    });
}

- (NSString *)bankNameExt {
    return ThreadSafeReturn(^id{
        return self.internal.bankNameExt;
    });
}

- (void)setBankNameExt:(NSString *)bankNameExt {
    ThreadSafe(^{
        self.internal.bankNameExt = bankNameExt;
    });
}

- (NSString *)detailPrefix {
    return ThreadSafeReturn(^id{
        return self.internal.detailPrefix;
    });
}

- (void)setDetailPrefix:(NSString *)detailPrefix {
    ThreadSafe(^{
        self.internal.detailPrefix = detailPrefix;
    });
}

- (NSNumber *)lastPaymentAmt {
    return ThreadSafeReturn(^id{
        return self.internal.lastPaymentAmt;
    });
}

- (void)setLastPaymentAmt:(NSNumber *)lastPaymentAmt {
    ThreadSafe(^{
        self.internal.lastPaymentAmt = lastPaymentAmt;
    });
}

- (NSString *)payeeAccount {
    return ThreadSafeReturn(^id{
        return self.internal.payeeAccount;
    });
}

- (void)setPayeeAccount:(NSString *)payeeAccount {
    ThreadSafe(^{
        self.internal.payeeAccount = payeeAccount;
    });
}

- (NSString *)payeeDescription {
    return ThreadSafeReturn(^id{
        return self.internal.payeeDescription;
    });
}

- (void)setPayeeDescription:(NSString *)payeeDescription {
    ThreadSafe(^{
        self.internal.payeeDescription = payeeDescription;
    });
}

- (NSNumber *)payeeListIdTwo {
    return ThreadSafeReturn(^id{
        return self.internal.payeeListIdTwo;
    });
}

- (void)setPayeeListIdTwo:(NSNumber *)payeeListIdTwo {
    ThreadSafe(^{
        self.internal.payeeListIdTwo = payeeListIdTwo;
    });
}

- (NSNumber *)payeeListIdType {
    return ThreadSafeReturn(^id{
        return self.internal.payeeListIdType;
    });
}

- (void)setPayeeListIdType:(NSNumber *)payeeListIdType {
    ThreadSafe(^{
        self.internal.payeeListIdType = payeeListIdType;
    });
}

- (NSNumber *)payeeType {
    return ThreadSafeReturn(^id{
        return self.internal.payeeType;
    });
}

- (void)setPayeeType:(NSNumber *)payeeType {
    ThreadSafe(^{
        self.internal.payeeType = payeeType;
    });
}

- (NSString *)paymentMethod {
    return ThreadSafeReturn(^id{
        return self.internal.paymentMethod;
    });
}

- (void)setPaymentMethod:(NSString *)paymentMethod {
    ThreadSafe(^{
        self.internal.paymentMethod = paymentMethod;
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
