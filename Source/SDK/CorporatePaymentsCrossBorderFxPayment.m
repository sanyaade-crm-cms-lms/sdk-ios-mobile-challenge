//
//  CorporatePaymentsCrossBorderFxPayment.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CorporatePaymentsCrossBorderFxPayment.h"
#import "CorporatePaymentsCrossBorderFxPayment$AP$.h"
#import "CorporatePayments.h"

@interface CorporatePaymentsCrossBorderFxPayment ()

@property (nonatomic, strong) CorporatePaymentsCrossBorderFxPayment$AP$ * internal;

@end

@implementation CorporatePaymentsCrossBorderFxPayment

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

- (NSString *)beneficiaryAccount {
    return ThreadSafeReturn(^id{
        return self.internal.beneficiaryAccount;
    });
}

- (void)setBeneficiaryAccount:(NSString *)beneficiaryAccount {
    ThreadSafe(^{
        self.internal.beneficiaryAccount = beneficiaryAccount;
    });
}

- (NSString *)beneficiaryAddress {
    return ThreadSafeReturn(^id{
        return self.internal.beneficiaryAddress;
    });
}

- (void)setBeneficiaryAddress:(NSString *)beneficiaryAddress {
    ThreadSafe(^{
        self.internal.beneficiaryAddress = beneficiaryAddress;
    });
}

- (NSString *)beneficiaryBank {
    return ThreadSafeReturn(^id{
        return self.internal.beneficiaryBank;
    });
}

- (void)setBeneficiaryBank:(NSString *)beneficiaryBank {
    ThreadSafe(^{
        self.internal.beneficiaryBank = beneficiaryBank;
    });
}

- (NSString *)beneficiaryName {
    return ThreadSafeReturn(^id{
        return self.internal.beneficiaryName;
    });
}

- (void)setBeneficiaryName:(NSString *)beneficiaryName {
    ThreadSafe(^{
        self.internal.beneficiaryName = beneficiaryName;
    });
}

- (NSString *)citiRef {
    return ThreadSafeReturn(^id{
        return self.internal.citiRef;
    });
}

- (void)setCitiRef:(NSString *)citiRef {
    ThreadSafe(^{
        self.internal.citiRef = citiRef;
    });
}

- (NSString *)createdBy {
    return ThreadSafeReturn(^id{
        return self.internal.createdBy;
    });
}

- (void)setCreatedBy:(NSString *)createdBy {
    ThreadSafe(^{
        self.internal.createdBy = createdBy;
    });
}

- (NSString *)createdOn {
    return ThreadSafeReturn(^id{
        return self.internal.createdOn;
    });
}

- (void)setCreatedOn:(NSString *)createdOn {
    ThreadSafe(^{
        self.internal.createdOn = createdOn;
    });
}

- (NSString *)customerTxnRef {
    return ThreadSafeReturn(^id{
        return self.internal.customerTxnRef;
    });
}

- (void)setCustomerTxnRef:(NSString *)customerTxnRef {
    ThreadSafe(^{
        self.internal.customerTxnRef = customerTxnRef;
    });
}

- (NSString *)debtorAccount {
    return ThreadSafeReturn(^id{
        return self.internal.debtorAccount;
    });
}

- (void)setDebtorAccount:(NSString *)debtorAccount {
    ThreadSafe(^{
        self.internal.debtorAccount = debtorAccount;
    });
}

- (NSString *)debtorAddress {
    return ThreadSafeReturn(^id{
        return self.internal.debtorAddress;
    });
}

- (void)setDebtorAddress:(NSString *)debtorAddress {
    ThreadSafe(^{
        self.internal.debtorAddress = debtorAddress;
    });
}

- (NSString *)debtorName {
    return ThreadSafeReturn(^id{
        return self.internal.debtorName;
    });
}

- (void)setDebtorName:(NSString *)debtorName {
    ThreadSafe(^{
        self.internal.debtorName = debtorName;
    });
}

- (NSNumber *)fromAmount {
    return ThreadSafeReturn(^id{
        return self.internal.fromAmount;
    });
}

- (void)setFromAmount:(NSNumber *)fromAmount {
    ThreadSafe(^{
        self.internal.fromAmount = fromAmount;
    });
}

- (NSString *)fromCurrency {
    return ThreadSafeReturn(^id{
        return self.internal.fromCurrency;
    });
}

- (void)setFromCurrency:(NSString *)fromCurrency {
    ThreadSafe(^{
        self.internal.fromCurrency = fromCurrency;
    });
}

- (NSString *)paymentDetails {
    return ThreadSafeReturn(^id{
        return self.internal.paymentDetails;
    });
}

- (void)setPaymentDetails:(NSString *)paymentDetails {
    ThreadSafe(^{
        self.internal.paymentDetails = paymentDetails;
    });
}

- (NSString *)rateReference {
    return ThreadSafeReturn(^id{
        return self.internal.rateReference;
    });
}

- (void)setRateReference:(NSString *)rateReference {
    ThreadSafe(^{
        self.internal.rateReference = rateReference;
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

- (NSNumber *)toAmount {
    return ThreadSafeReturn(^id{
        return self.internal.toAmount;
    });
}

- (void)setToAmount:(NSNumber *)toAmount {
    ThreadSafe(^{
        self.internal.toAmount = toAmount;
    });
}

- (NSString *)toCurrency {
    return ThreadSafeReturn(^id{
        return self.internal.toCurrency;
    });
}

- (void)setToCurrency:(NSString *)toCurrency {
    ThreadSafe(^{
        self.internal.toCurrency = toCurrency;
    });
}

- (NSString *)valueDate {
    return ThreadSafeReturn(^id{
        return self.internal.valueDate;
    });
}

- (void)setValueDate:(NSString *)valueDate {
    ThreadSafe(^{
        self.internal.valueDate = valueDate;
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
