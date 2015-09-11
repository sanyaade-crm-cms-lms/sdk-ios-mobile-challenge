//
//  RetailBanking.m
//  AnyPresence SDK
//

#import "RetailBanking.h"
#import "APService+Internal.h"
#import "APRequest.h"

@implementation RetailBanking

static NSURL * __baseURL;
static NSString * __username;
static NSString * __password;
static NSData * __certificate;

+ (void)initialize {

    if (!__baseURL) {
        __baseURL = [NSURL URLWithString:@"https://citimobilechallenge.anypresenceapp.com/retailbanking/v1"];
    }
    
    if (!__username) {
        __username = @"";
    }
}

#pragma mark - Setters

+ (void)setBaseURL:(NSURL *)url {
    __baseURL = url;
}

+ (void)setHTTPBasicAuthUsername:(NSString *)username password:(NSString *)password {
    assert(username && password);
    __username = username;
    __password = password;
}

+ (void)setSSLCertificate:(NSString *)path {
    __certificate = [super certificatePathToData:path dataSource:self];
}

#pragma mark - Getters

+ (NSURL *)baseURL {
    
    if (!__baseURL) {
        @throw [NSException exceptionWithName:kAPRequestBaseURLException
                                       reason:@"RetailBanking base URL is not set.  Use [RetailBanking setBaseURL:(NSURL *)URL] to set base URL."
                                     userInfo:nil];
    }
    
    return __baseURL;
}

+ (NSData *)certificate {
    return __certificate;
}

+ (enum APSerializationFormat)serializationFormat {
    return APSerializationFormatJSON;
}

+ (NSDictionary *)httpHeaders {

    NSMutableDictionary *httpHeaders = [NSMutableDictionary new];

    if(__username && __password) {
        NSString *userAndPassString = [NSString stringWithFormat:@"%@:%@", __username, __password];
        NSData *userAndPassData = [userAndPassString dataUsingEncoding:NSUTF8StringEncoding];
        NSString *base64Encoded = [userAndPassData base64EncodedStringWithOptions:0];
        NSString *authHeaderValue = [NSString stringWithFormat:@"Basic %@", base64Encoded];
        [httpHeaders setObject:authHeaderValue forKey:@"Authorization"];
    }

    [httpHeaders setObject:@"Bearer {{session.retail_banking_token}}" forKey:@"Authorization"];

    return httpHeaders;    
}

+ (NSDictionary *)urlParameters {
    NSMutableDictionary *urlParameters = [NSMutableDictionary new];
    [urlParameters setObject:@"{{session.client_id}}" forKey:@"client_id"];
    return urlParameters;    
}

+ (NSString *)verb:(APRequestVerb)verb {
    
    switch (verb) {
        case kAPRequestVerbCreate:
            return @"POST";
        case kAPRequestVerbRead:
            return @"GET";
        case kAPRequestVerbUpdate:
            return @"PUT";
        case kAPRequestVerbDelete:
            return @"DELETE";
    }
    
    assert(NO);
}

#pragma mark - Helpers

+ (void)resetSSLPinning {
    __certificate = nil;
}

@end
