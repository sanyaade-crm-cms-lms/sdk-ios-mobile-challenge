//
//  RetailBankingRewardsRedemption.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingRewardsRedemption.h"
#import "RetailBankingRewardsRedemption$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingRewardsRedemption ()

@property (nonatomic, strong) RetailBankingRewardsRedemption$AP$ * internal;

@end

@implementation RetailBankingRewardsRedemption

#pragma mark - Data Source

+ (Class)dataSource {
    return [RetailBanking class];
}

#pragma mark - Public

- (NSNumber *)id {
    return ThreadSafeReturn(^id{
        return self.internal.id;
    });
}

- (void)setId:(NSNumber *)id {
    ThreadSafe(^{
        self.internal.id = id;
    });
}

- (NSNumber *)pointsAvailable {
    return ThreadSafeReturn(^id{
        return self.internal.pointsAvailable;
    });
}

- (void)setPointsAvailable:(NSNumber *)pointsAvailable {
    ThreadSafe(^{
        self.internal.pointsAvailable = pointsAvailable;
    });
}

- (NSArray *)redemptionDetails {
    return ThreadSafeReturn(^id{
        return self.internal.redemptionDetails;
    });
}

- (void)setRedemptionDetails:(NSArray *)redemptionDetails {
    ThreadSafe(^{
        self.internal.redemptionDetails = redemptionDetails;
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
