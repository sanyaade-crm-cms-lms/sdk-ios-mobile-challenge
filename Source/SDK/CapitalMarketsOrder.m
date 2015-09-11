//
//  CapitalMarketsOrder.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CapitalMarketsOrder.h"
#import "CapitalMarketsOrder$AP$.h"
#import "CapitalMarketsTrading.h"

@interface CapitalMarketsOrder ()

@property (nonatomic, strong) CapitalMarketsOrder$AP$ * internal;

@end

@implementation CapitalMarketsOrder

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

- (NSString *)comments {
    return ThreadSafeReturn(^id{
        return self.internal.comments;
    });
}

- (void)setComments:(NSString *)comments {
    ThreadSafe(^{
        self.internal.comments = comments;
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

- (NSNumber *)lastPrice {
    return ThreadSafeReturn(^id{
        return self.internal.lastPrice;
    });
}

- (void)setLastPrice:(NSNumber *)lastPrice {
    ThreadSafe(^{
        self.internal.lastPrice = lastPrice;
    });
}

- (NSNumber *)lastQty {
    return ThreadSafeReturn(^id{
        return self.internal.lastQty;
    });
}

- (void)setLastQty:(NSNumber *)lastQty {
    ThreadSafe(^{
        self.internal.lastQty = lastQty;
    });
}

- (NSNumber *)price {
    return ThreadSafeReturn(^id{
        return self.internal.price;
    });
}

- (void)setPrice:(NSNumber *)price {
    ThreadSafe(^{
        self.internal.price = price;
    });
}

- (NSNumber *)quantity {
    return ThreadSafeReturn(^id{
        return self.internal.quantity;
    });
}

- (void)setQuantity:(NSNumber *)quantity {
    ThreadSafe(^{
        self.internal.quantity = quantity;
    });
}

- (NSString *)side {
    return ThreadSafeReturn(^id{
        return self.internal.side;
    });
}

- (void)setSide:(NSString *)side {
    ThreadSafe(^{
        self.internal.side = side;
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

- (NSString *)symbol {
    return ThreadSafeReturn(^id{
        return self.internal.symbol;
    });
}

- (void)setSymbol:(NSString *)symbol {
    ThreadSafe(^{
        self.internal.symbol = symbol;
    });
}

- (NSString *)transactTime {
    return ThreadSafeReturn(^id{
        return self.internal.transactTime;
    });
}

- (void)setTransactTime:(NSString *)transactTime {
    ThreadSafe(^{
        self.internal.transactTime = transactTime;
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
