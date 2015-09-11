//
//  RetailBankingPayeeType.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingPayeeType.h"
#import "RetailBankingPayeeType$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingPayeeType ()

@property (nonatomic, strong) RetailBankingPayeeType$AP$ * internal;

@end

@implementation RetailBankingPayeeType

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

- (NSString *)value {
    return ThreadSafeReturn(^id{
        return self.internal.value;
    });
}

- (void)setValue:(NSString *)value {
    ThreadSafe(^{
        self.internal.value = value;
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
