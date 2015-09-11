//
//  CorporatePaymentsPayment.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CorporatePaymentsPayment.h"
#import "CorporatePaymentsPayment$AP$.h"
#import "CorporatePayments.h"

@interface CorporatePaymentsPayment ()

@property (nonatomic, strong) CorporatePaymentsPayment$AP$ * internal;

@end

@implementation CorporatePaymentsPayment

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

- (NSString *)beneficiaryId {
    return ThreadSafeReturn(^id{
        return self.internal.beneficiaryId;
    });
}

- (void)setBeneficiaryId:(NSString *)beneficiaryId {
    ThreadSafe(^{
        self.internal.beneficiaryId = beneficiaryId;
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

- (NSString *)customerReferenceNumber {
    return ThreadSafeReturn(^id{
        return self.internal.customerReferenceNumber;
    });
}

- (void)setCustomerReferenceNumber:(NSString *)customerReferenceNumber {
    ThreadSafe(^{
        self.internal.customerReferenceNumber = customerReferenceNumber;
    });
}

- (NSString *)debitAccountName {
    return ThreadSafeReturn(^id{
        return self.internal.debitAccountName;
    });
}

- (void)setDebitAccountName:(NSString *)debitAccountName {
    ThreadSafe(^{
        self.internal.debitAccountName = debitAccountName;
    });
}

- (NSString *)debitAccountNumber {
    return ThreadSafeReturn(^id{
        return self.internal.debitAccountNumber;
    });
}

- (void)setDebitAccountNumber:(NSString *)debitAccountNumber {
    ThreadSafe(^{
        self.internal.debitAccountNumber = debitAccountNumber;
    });
}

- (NSString *)email {
    return ThreadSafeReturn(^id{
        return self.internal.email;
    });
}

- (void)setEmail:(NSString *)email {
    ThreadSafe(^{
        self.internal.email = email;
    });
}

- (NSString *)paymentAmount {
    return ThreadSafeReturn(^id{
        return self.internal.paymentAmount;
    });
}

- (void)setPaymentAmount:(NSString *)paymentAmount {
    ThreadSafe(^{
        self.internal.paymentAmount = paymentAmount;
    });
}

- (NSString *)paymentCurrency {
    return ThreadSafeReturn(^id{
        return self.internal.paymentCurrency;
    });
}

- (void)setPaymentCurrency:(NSString *)paymentCurrency {
    ThreadSafe(^{
        self.internal.paymentCurrency = paymentCurrency;
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

- (NSString *)paymentType {
    return ThreadSafeReturn(^id{
        return self.internal.paymentType;
    });
}

- (void)setPaymentType:(NSString *)paymentType {
    ThreadSafe(^{
        self.internal.paymentType = paymentType;
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

- (NSString *)transactionReferenceNumber {
    return ThreadSafeReturn(^id{
        return self.internal.transactionReferenceNumber;
    });
}

- (void)setTransactionReferenceNumber:(NSString *)transactionReferenceNumber {
    ThreadSafe(^{
        self.internal.transactionReferenceNumber = transactionReferenceNumber;
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
