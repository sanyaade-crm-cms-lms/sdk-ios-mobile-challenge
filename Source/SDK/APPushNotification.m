//
//  APPushNotification.m
//  AnyPresence SDK
//

#import "APPushNotification.h"
#import "APRequest.h"
#import "APService+Requests.h"
#import "AnyPresenceAPI.h"

@interface AnyPresenceAPI (Private)

+ (NSURL *)baseURL;

@end

@implementation APPushNotification

NSString * const kAPRegisterDeviceUri           = @"api/push_notifications/device";
NSString * const kAPUnregisterDeviceUri         = @"api/push_notifications/device/unregister";
NSString * const kAPSubscribeToChannelUri       = @"api/push_notifications/channel/subscribe";
NSString * const kAPUnsubscribeFromChannelUri   = @"api/push_notifications/channel/unsubscribe";
NSString * const kAPSendMessageUri              = @"api/push_notifications/message";

+ (void)registerDevice:(NSString *)deviceId callback:(APPushCallback)callback {
    
    NSCharacterSet *charactersToRemove = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
    NSString *trimmedDeviceId = deviceId ? [[deviceId componentsSeparatedByCharactersInSet:charactersToRemove] componentsJoinedByString:@""] : @"";
    
    NSDictionary *params = @{ @"identifier" : trimmedDeviceId,
                              @"provider_name" : @"Apple" };

    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:params options:0 error:&error];
    
    APRequest *request = [[APRequest alloc] initWithVerb:kAPRequestVerbCreate resource:kAPRegisterDeviceUri query:nil];
    [request setBody:data as:@"application/json"];
    
    [request loadAsync:^(NSData *response, NSError *error) {
        NSString *responseStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
        callback(responseStr, error);
    }];
}

+ (void)unregisterDevice:(NSString *)deviceId callback:(APPushCallback)callback {
    
    NSCharacterSet *charactersToRemove = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
    NSString *trimmedDeviceId = deviceId ? [[deviceId componentsSeparatedByCharactersInSet:charactersToRemove] componentsJoinedByString:@""] : @"";
    
    NSDictionary *params = @{ @"identifier" : trimmedDeviceId };
    
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:params options:0 error:&error];
    
    APRequest *request = [[APRequest alloc] initWithVerb:kAPRequestVerbCreate resource:kAPUnregisterDeviceUri query:nil];
    [request setBody:data as:@"application/json"];
    
    [request loadAsync:^(NSData *response, NSError *error) {
        NSString *responseStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
        callback(responseStr, error);
    }];
}

+ (void)subscribeToChannel:(NSString *)channelName deviceId:(NSString *)deviceId callback:(APPushCallback)callback {
    
    NSString *channel = channelName ? channelName : @"";
    NSCharacterSet *charactersToRemove = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
    NSString *trimmedDeviceId = deviceId ? [[deviceId componentsSeparatedByCharactersInSet:charactersToRemove] componentsJoinedByString:@""] : @"";
    
    NSDictionary *params = @{ @"channelName" : channel,
                              @"deviceId" : trimmedDeviceId,
                              @"provider" : @"Apple" };
    
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:params options:0 error:&error];
    
    APRequest *request = [[APRequest alloc] initWithVerb:kAPRequestVerbCreate resource:kAPSubscribeToChannelUri query:nil];
    [request setBody:data as:@"application/json"];
    
    [request loadAsync:^(NSData *response, NSError *error) {
        NSString *responseStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
        callback(responseStr, error);
    }];
}

+ (void)unsubscribeFromChannel:(NSString *)channelName deviceId:(NSString *)deviceId callback:(APPushCallback)callback {
    
    NSString *channel = channelName ? channelName : @"";
    NSCharacterSet *charactersToRemove = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
    NSString *trimmedDeviceId = deviceId ? [[deviceId componentsSeparatedByCharactersInSet:charactersToRemove] componentsJoinedByString:@""] : @"";
    
    NSDictionary *params = @{ @"channelName" : channel,
                              @"deviceId" : trimmedDeviceId };
    
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:params options:0 error:&error];
    
    APRequest *request = [[APRequest alloc] initWithVerb:kAPRequestVerbCreate resource:kAPUnsubscribeFromChannelUri query:nil];
    [request setBody:data as:@"application/json"];
    
    [request loadAsync:^(NSData *response, NSError *error) {
        NSString *responseStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
        callback(responseStr, error);
    }];
}

+ (void)sendMessage:(NSString *)payload
        channelName:(NSString *)channelName
            iOSData:(APPushNotificationIOSData *)iOSData
        androidData:(APPushNotificationAndroidData *)androidData
           callback:(APPushCallback)callback {
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    
    NSString *payloadChk = payload ? payload : @"";
    NSString *channel = channelName ? channelName : @"";
    
    [params setObject:payloadChk forKey:@"payload"];
    [params setObject:channel forKey:@"channelName"];
    [params setObject:@"true" forKey:@"is_channel"];
    
    if (iOSData) {
        if (iOSData.alert) {
            [params setObject:iOSData.alert forKey:@"apple_alert"];
        }
        
        if (iOSData.badge) {
            [params setObject:iOSData.badge forKey:@"apple_badge"];
        }
        
        if (iOSData.sound) {
            [params setObject:iOSData.sound forKey:@"apple_sound"];
        }
        
        if (iOSData.expiry) {
            [params setObject:iOSData.expiry forKey:@"apple_expiry"];
        }
    }
    
    if (androidData) {
        
        if (androidData.collapseKey) {
            [params setObject:androidData.collapseKey forKey:@"google_collapseKey"];
        }
        
        if (androidData.ttl) {
            [params setObject:androidData.ttl forKey:@"google_timeToLive"];
        }
        
        if (androidData.delayWhileIdle) {
            NSString *delay = androidData.delayWhileIdle ? @"true" : @"false";
            [params setObject:delay forKey:@"google_delayWhileIdle"];
        }
    }
    
    NSError *error = nil;
    NSData *paramData = [NSJSONSerialization dataWithJSONObject:params options:0 error:&error];
    
    APRequest *request = [[APRequest alloc] initWithVerb:kAPRequestVerbCreate resource:kAPSendMessageUri query:nil];
    [request setBody:paramData as:@"application/json"];
    
    [request loadAsync:^(NSData *response, NSError *error) {
        NSString *responseStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
        callback(responseStr, error);
    }];
}

@end
