//
//  CapitalMarketsRevenue.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CapitalMarketsRevenue.h"
#import "CapitalMarketsRevenue$AP$.h"
#import "CapitalMarketsTrading.h"

@interface CapitalMarketsRevenue ()

@property (nonatomic, strong) CapitalMarketsRevenue$AP$ * internal;

@end

@implementation CapitalMarketsRevenue

#pragma mark - Data Source

+ (Class)dataSource {
    return [CapitalMarketsTrading class];
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

- (NSString *)clientId {
    return ThreadSafeReturn(^id{
        return self.internal.clientId;
    });
}

- (void)setClientId:(NSString *)clientId {
    ThreadSafe(^{
        self.internal.clientId = clientId;
    });
}

- (NSString *)clientName {
    return ThreadSafeReturn(^id{
        return self.internal.clientName;
    });
}

- (void)setClientName:(NSString *)clientName {
    ThreadSafe(^{
        self.internal.clientName = clientName;
    });
}

- (NSString *)clientTier {
    return ThreadSafeReturn(^id{
        return self.internal.clientTier;
    });
}

- (void)setClientTier:(NSString *)clientTier {
    ThreadSafe(^{
        self.internal.clientTier = clientTier;
    });
}

- (NSNumber *)grossComm {
    return ThreadSafeReturn(^id{
        return self.internal.grossComm;
    });
}

- (void)setGrossComm:(NSNumber *)grossComm {
    ThreadSafe(^{
        self.internal.grossComm = grossComm;
    });
}

- (NSString *)month {
    return ThreadSafeReturn(^id{
        return self.internal.month;
    });
}

- (void)setMonth:(NSString *)month {
    ThreadSafe(^{
        self.internal.month = month;
    });
}

- (NSString *)productId {
    return ThreadSafeReturn(^id{
        return self.internal.productId;
    });
}

- (void)setProductId:(NSString *)productId {
    ThreadSafe(^{
        self.internal.productId = productId;
    });
}

- (NSString *)productName {
    return ThreadSafeReturn(^id{
        return self.internal.productName;
    });
}

- (void)setProductName:(NSString *)productName {
    ThreadSafe(^{
        self.internal.productName = productName;
    });
}

- (NSNumber *)profitLoss {
    return ThreadSafeReturn(^id{
        return self.internal.profitLoss;
    });
}

- (void)setProfitLoss:(NSNumber *)profitLoss {
    ThreadSafe(^{
        self.internal.profitLoss = profitLoss;
    });
}

- (NSString *)region {
    return ThreadSafeReturn(^id{
        return self.internal.region;
    });
}

- (void)setRegion:(NSString *)region {
    ThreadSafe(^{
        self.internal.region = region;
    });
}

- (NSNumber *)year {
    return ThreadSafeReturn(^id{
        return self.internal.year;
    });
}

- (void)setYear:(NSNumber *)year {
    ThreadSafe(^{
        self.internal.year = year;
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
