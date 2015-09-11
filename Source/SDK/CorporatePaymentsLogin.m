//
//  CorporatePaymentsLogin.m
//  AnyPresence SDK
//

#import "APObject+Internal.h"
#import "APObject+Remote.h"
#import "APObject+RemoteID.h"
#import "APObject+Local.h"
#import "APObject+RemoteConfig.h"
#import "APObjectRemoteConfig.h"
#import "CorporatePaymentsLogin.h"
#import "CorporatePaymentsLogin$AP$.h"
#import "CorporatePayments.h"

@interface CorporatePaymentsLogin ()

@property (nonatomic, strong) CorporatePaymentsLogin$AP$ * internal;

@end

@implementation CorporatePaymentsLogin

#pragma mark - Data Source

+ (Class)dataSource {
    return [CorporatePayments class];
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
