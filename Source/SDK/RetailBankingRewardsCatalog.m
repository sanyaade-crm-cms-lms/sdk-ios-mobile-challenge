//
//  RetailBankingRewardsCatalog.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "RetailBankingRewardsCatalog.h"
#import "RetailBankingRewardsCatalog$AP$.h"
#import "RetailBanking.h"

@interface RetailBankingRewardsCatalog ()

@property (nonatomic, strong) RetailBankingRewardsCatalog$AP$ * internal;

@end

@implementation RetailBankingRewardsCatalog

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

- (NSString *)itemCategory {
    return ThreadSafeReturn(^id{
        return self.internal.itemCategory;
    });
}

- (void)setItemCategory:(NSString *)itemCategory {
    ThreadSafe(^{
        self.internal.itemCategory = itemCategory;
    });
}

- (NSString *)itemCode {
    return ThreadSafeReturn(^id{
        return self.internal.itemCode;
    });
}

- (void)setItemCode:(NSString *)itemCode {
    ThreadSafe(^{
        self.internal.itemCode = itemCode;
    });
}

- (NSString *)itemDescription {
    return ThreadSafeReturn(^id{
        return self.internal.itemDescription;
    });
}

- (void)setItemDescription:(NSString *)itemDescription {
    ThreadSafe(^{
        self.internal.itemDescription = itemDescription;
    });
}

- (NSString *)itemName {
    return ThreadSafeReturn(^id{
        return self.internal.itemName;
    });
}

- (void)setItemName:(NSString *)itemName {
    ThreadSafe(^{
        self.internal.itemName = itemName;
    });
}

- (NSNumber *)pointRequired {
    return ThreadSafeReturn(^id{
        return self.internal.pointRequired;
    });
}

- (void)setPointRequired:(NSNumber *)pointRequired {
    ThreadSafe(^{
        self.internal.pointRequired = pointRequired;
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
