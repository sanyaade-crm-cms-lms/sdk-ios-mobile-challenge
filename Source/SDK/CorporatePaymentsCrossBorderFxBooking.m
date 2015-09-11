//
//  CorporatePaymentsCrossBorderFxBooking.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CorporatePaymentsCrossBorderFxBooking.h"
#import "CorporatePaymentsCrossBorderFxBooking$AP$.h"
#import "CorporatePayments.h"

@interface CorporatePaymentsCrossBorderFxBooking ()

@property (nonatomic, strong) CorporatePaymentsCrossBorderFxBooking$AP$ * internal;

@end

@implementation CorporatePaymentsCrossBorderFxBooking

#pragma mark - Data Source

+ (Class)dataSource {
    return [CorporatePayments class];
}

#pragma mark - Public

- (NSString *)acceptedOn {
    return ThreadSafeReturn(^id{
        return self.internal.acceptedOn;
    });
}

- (void)setAcceptedOn:(NSString *)acceptedOn {
    ThreadSafe(^{
        self.internal.acceptedOn = acceptedOn;
    });
}

- (NSString *)acceptedBy {
    return ThreadSafeReturn(^id{
        return self.internal.acceptedBy;
    });
}

- (void)setAcceptedBy:(NSString *)acceptedBy {
    ThreadSafe(^{
        self.internal.acceptedBy = acceptedBy;
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

#pragma mark - NSObject

- (id)initWithInternal:(APInternalObject *)internal {
    if ((self = [super initWithInternal:internal])) {
        [self.class remoteConfig].remoteIDProperty = @"acceptedOn";
        
    ThreadSafe(^{
    });
    }
    return self;
}

@end
