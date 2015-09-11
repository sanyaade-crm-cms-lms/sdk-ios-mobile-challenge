//
//  CapitalMarketsLogin.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CapitalMarketsLogin.h"
#import "CapitalMarketsLogin$AP$.h"
#import "CapitalMarketsTrading.h"

@interface CapitalMarketsLogin ()

@property (nonatomic, strong) CapitalMarketsLogin$AP$ * internal;

@end

@implementation CapitalMarketsLogin

#pragma mark - Data Source

+ (Class)dataSource {
    return [CapitalMarketsTrading class];
}

#pragma mark - Public

- (NSString *)token {
    return ThreadSafeReturn(^id{
        return self.internal.token;
    });
}

- (void)setToken:(NSString *)token {
    ThreadSafe(^{
        self.internal.token = token;
    });
}

- (NSString *)password {
    return ThreadSafeReturn(^id{
        return self.internal.password;
    });
}

- (void)setPassword:(NSString *)password {
    ThreadSafe(^{
        self.internal.password = password;
    });
}

- (NSString *)username {
    return ThreadSafeReturn(^id{
        return self.internal.username;
    });
}

- (void)setUsername:(NSString *)username {
    ThreadSafe(^{
        self.internal.username = username;
    });
}

#pragma mark - NSObject

- (id)initWithInternal:(APInternalObject *)internal {
    if ((self = [super initWithInternal:internal])) {
        [self.class remoteConfig].remoteIDProperty = @"token";
        
    ThreadSafe(^{
    });
    }
    return self;
}

@end
