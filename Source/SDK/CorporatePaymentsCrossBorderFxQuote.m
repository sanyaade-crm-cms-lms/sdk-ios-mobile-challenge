//
//  CorporatePaymentsCrossBorderFxQuote.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CorporatePaymentsCrossBorderFxQuote.h"
#import "CorporatePaymentsCrossBorderFxQuote$AP$.h"
#import "CorporatePayments.h"

@interface CorporatePaymentsCrossBorderFxQuote ()

@property (nonatomic, strong) CorporatePaymentsCrossBorderFxQuote$AP$ * internal;

@end

@implementation CorporatePaymentsCrossBorderFxQuote

#pragma mark - Data Source

+ (Class)dataSource {
    return [CorporatePayments class];
}

#pragma mark - Public

- (NSString *)requestedOn {
    return ThreadSafeReturn(^id{
        return self.internal.requestedOn;
    });
}

- (void)setRequestedOn:(NSString *)requestedOn {
    ThreadSafe(^{
        self.internal.requestedOn = requestedOn;
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

- (NSString *)rateExpiry {
    return ThreadSafeReturn(^id{
        return self.internal.rateExpiry;
    });
}

- (void)setRateExpiry:(NSString *)rateExpiry {
    ThreadSafe(^{
        self.internal.rateExpiry = rateExpiry;
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

- (NSString *)requestedBy {
    return ThreadSafeReturn(^id{
        return self.internal.requestedBy;
    });
}

- (void)setRequestedBy:(NSString *)requestedBy {
    ThreadSafe(^{
        self.internal.requestedBy = requestedBy;
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
        [self.class remoteConfig].remoteIDProperty = @"requestedOn";
        
    ThreadSafe(^{
    });
    }
    return self;
}

@end
