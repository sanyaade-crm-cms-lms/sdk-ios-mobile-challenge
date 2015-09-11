//
//  RetailBankingForeignCurrency.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingForeignCurrency.h"
#import "RetailBankingForeignCurrency$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingForeignCurrency ()

@property (nonatomic, strong) RetailBankingForeignCurrency$AP$ * internal;

@end

@implementation RetailBankingForeignCurrency

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

- (NSNumber *)rate {
    return ThreadSafeReturn(^id{
        return self.internal.rate;
    });
}

- (void)setRate:(NSNumber *)rate {
    ThreadSafe(^{
        self.internal.rate = rate;
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
