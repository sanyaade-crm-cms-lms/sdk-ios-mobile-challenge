//
//  APMockURLProtocol.m
//  AnyPresence SDK
//

#import "APMockURLProtocol.h"

@implementation APMockURLProtocol

- (void)cancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {}

- (void)continueWithoutCredentialForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {}

- (void)useCredential:(NSURLCredential *)credential forAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge {}

@end
