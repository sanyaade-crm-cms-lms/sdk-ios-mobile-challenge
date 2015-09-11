//
//  CorporatePaymentsBeneficiary.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CorporatePaymentsBeneficiary.h"
#import "CorporatePaymentsBeneficiary$AP$.h"
#import "CorporatePayments.h"

@interface CorporatePaymentsBeneficiary ()

@property (nonatomic, strong) CorporatePaymentsBeneficiary$AP$ * internal;

@end

@implementation CorporatePaymentsBeneficiary

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

- (NSDictionary *)address {
    return ThreadSafeReturn(^id{
        return self.internal.address;
    });
}

- (void)setAddress:(NSDictionary *)address {
    ThreadSafe(^{
        self.internal.address = address;
    });
}

- (NSString *)bankAccountType {
    return ThreadSafeReturn(^id{
        return self.internal.bankAccountType;
    });
}

- (void)setBankAccountType:(NSString *)bankAccountType {
    ThreadSafe(^{
        self.internal.bankAccountType = bankAccountType;
    });
}

- (NSString *)bankAddress {
    return ThreadSafeReturn(^id{
        return self.internal.bankAddress;
    });
}

- (void)setBankAddress:(NSString *)bankAddress {
    ThreadSafe(^{
        self.internal.bankAddress = bankAddress;
    });
}

- (NSString *)bankCountry {
    return ThreadSafeReturn(^id{
        return self.internal.bankCountry;
    });
}

- (void)setBankCountry:(NSString *)bankCountry {
    ThreadSafe(^{
        self.internal.bankCountry = bankCountry;
    });
}

- (NSString *)bic {
    return ThreadSafeReturn(^id{
        return self.internal.bic;
    });
}

- (void)setBic:(NSString *)bic {
    ThreadSafe(^{
        self.internal.bic = bic;
    });
}

- (NSString *)companyName {
    return ThreadSafeReturn(^id{
        return self.internal.companyName;
    });
}

- (void)setCompanyName:(NSString *)companyName {
    ThreadSafe(^{
        self.internal.companyName = companyName;
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

- (NSString *)entityType {
    return ThreadSafeReturn(^id{
        return self.internal.entityType;
    });
}

- (void)setEntityType:(NSString *)entityType {
    ThreadSafe(^{
        self.internal.entityType = entityType;
    });
}

- (NSString *)iban {
    return ThreadSafeReturn(^id{
        return self.internal.iban;
    });
}

- (void)setIban:(NSString *)iban {
    ThreadSafe(^{
        self.internal.iban = iban;
    });
}

- (NSString *)routingCode {
    return ThreadSafeReturn(^id{
        return self.internal.routingCode;
    });
}

- (void)setRoutingCode:(NSString *)routingCode {
    ThreadSafe(^{
        self.internal.routingCode = routingCode;
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
