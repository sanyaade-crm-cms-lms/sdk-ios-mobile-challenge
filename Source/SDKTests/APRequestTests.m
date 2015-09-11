//
//  APRequestTests.m
//  AnyPresence SDK
//

#import <XCTest/XCTest.h>
#import "OCMock/OCMock.h"
#import "APRequest.h"
#import "APMockURLProtocol.h"
#import "AnyPresenceAPI.h"

@interface APRequest (Private)

- (void)resetSSLPinning;
- (BOOL)isPinningCertificate;
- (BOOL)connection:(NSURLConnection *)connection canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)space;
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
- (NSString *)stringURLTo:(NSString *)resource query:(NSDictionary *)params;

@end

static NSString *const APServerCertificate          = @"MyCertificate";
static NSString *const APCorrectLocalCertificate    = @"MyCertificate";
static NSString *const APWrongLocalCertificate      = @"WrongCertificate";
static NSString *const APCertificateType            = @"cer";

@interface APRequestTests : XCTestCase

@property (strong, nonatomic) APRequest *apRequest;

@end

@implementation APRequestTests

- (void)setUp {
    [super setUp];
    self.apRequest = [[APRequest alloc] initWithVerb:kAPRequestVerbCreate URL:nil dataSource:[AnyPresenceAPI class]];
}

- (void)tearDown {
    [super tearDown];
    [self.apRequest resetSSLPinning];
    self.apRequest = nil;
}

#pragma mark - Helper Methods

- (NSURLProtectionSpace *)protectionSpaceWithAuthenticationMethod:(NSString *)authMethod {
    return [[NSURLProtectionSpace alloc] initWithHost:@"localhost"
                                                 port:[[NSNumber numberWithInt:3000] intValue]
                                             protocol:@"https"
                                                realm:nil
                                 authenticationMethod:authMethod];
}

- (SecCertificateRef)selfSignedCertificate {
    
    NSString *certPath = [[NSBundle mainBundle] pathForResource:APServerCertificate ofType:APCertificateType];
    NSData *certData = [NSData dataWithContentsOfFile:certPath];
    
    return SecCertificateCreateWithData(NULL, (__bridge CFDataRef)(certData));
}

static SecTrustRef sectrustWithCertificate(SecCertificateRef certificate) {
    
    SecPolicyRef policy = SecPolicyCreateBasicX509();
    SecTrustRef trust = NULL;
    SecTrustCreateWithCertificates(certificate, policy, &trust);
    CFRelease(policy);
    
    return trust;
}

#pragma mark - SSL Pinning Testing

- (void)testUnitAuthenticateAgainstProtectionSpacePasses {
    NSURLProtectionSpace *space = [self protectionSpaceWithAuthenticationMethod:NSURLAuthenticationMethodServerTrust];
    XCTAssertTrue([self.apRequest connection:nil canAuthenticateAgainstProtectionSpace:space], @"Expected TRUE, got FALSE");
}

- (void)testUnitAuthenticateAgainstProtectionSpaceFails {
    NSURLProtectionSpace *space = [self protectionSpaceWithAuthenticationMethod:@"WrongAuthenticationMethodServerTrust"];
    XCTAssertFalse([self.apRequest connection:nil canAuthenticateAgainstProtectionSpace:space], @"Expected FALSE, got TRUE");
}

- (void)testUnitCertificatePinningMatches {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://tests/"];
    NSString *localCertificatePath = [[NSBundle mainBundle] pathForResource:APCorrectLocalCertificate ofType:APCertificateType];
    
    [AnyPresenceAPI setBaseURL:baseURL withSSLCertificatePath:localCertificatePath];
    
    __block BOOL useCredentialInvoked = NO;
    NSURLProtectionSpace *protectionSpace = [self protectionSpaceWithAuthenticationMethod:NSURLAuthenticationMethodServerTrust];
    SecCertificateRef certificate = [self selfSignedCertificate];
    SecTrustRef trust = sectrustWithCertificate(certificate);
    
    id mockedProtectionSpace = [OCMockObject partialMockForObject:protectionSpace];
    
    [[[mockedProtectionSpace stub] andDo:^(NSInvocation *invocation) {
        [invocation setReturnValue:(void *)&trust];
    }] serverTrust];
    
    APMockURLProtocol *protocol = [[APMockURLProtocol alloc] init];
    id mockedProtocol = [OCMockObject partialMockForObject:protocol];
    
    void(^useCredential)(NSInvocation *invocation) = ^(NSInvocation *invocation) {
        useCredentialInvoked = YES;
    };
    
    [[[mockedProtocol stub] andDo:useCredential] useCredential:OCMOCK_ANY forAuthenticationChallenge:OCMOCK_ANY];
    
    XCTAssertFalse(useCredentialInvoked, @"Credentials appear to be invoked when it should not.");
    
    NSURLCredential *credential = [[NSURLCredential alloc] initWithTrust:trust];
    NSURLAuthenticationChallenge *authenticationChallenge = [[NSURLAuthenticationChallenge alloc] initWithProtectionSpace:protectionSpace
                                                                                                       proposedCredential:credential
                                                                                                     previousFailureCount:0
                                                                                                          failureResponse:nil
                                                                                                                    error:nil
                                                                                                                   sender:mockedProtocol];
    
    [self.apRequest connection:nil didReceiveAuthenticationChallenge:authenticationChallenge];
    
    XCTAssertTrue(useCredentialInvoked, @"Credentials were not invoked.  Certificates may not match or certificate pinning is disabled.");
    XCTAssertTrue([self.apRequest isPinningCertificate], @"Expected certificate pinning to be enabled but found it disabled.");
    
    CFRelease(trust);
    CFRelease(certificate);
}

- (void)testUnitCertificatePinningDoesNotMatch {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://tests/"];
    NSString *localCertificatePath = [[NSBundle mainBundle] pathForResource:APWrongLocalCertificate ofType:APCertificateType];
    
    [AnyPresenceAPI setBaseURL:baseURL withSSLCertificatePath:localCertificatePath];
    
    __block BOOL cancelledAuthInvoked = NO;
    NSURLProtectionSpace *protectionSpace = [self protectionSpaceWithAuthenticationMethod:NSURLAuthenticationMethodServerTrust];
    SecCertificateRef certificate = [self selfSignedCertificate];
    SecTrustRef trust = sectrustWithCertificate(certificate);
    
    id mockedProtectionSpace = [OCMockObject partialMockForObject:protectionSpace];
    
    [[[mockedProtectionSpace stub] andDo:^(NSInvocation *invocation) {
        [invocation setReturnValue:(void *)&trust];
    }] serverTrust];
    
    APMockURLProtocol *protocol = [[APMockURLProtocol alloc] init];
    id mockedProtocol = [OCMockObject partialMockForObject:protocol];
    
    void(^cancelledAuth)(NSInvocation *invocation) = ^(NSInvocation *invocation) {
        cancelledAuthInvoked = YES;
    };
    
    [[[mockedProtocol stub] andDo:cancelledAuth] cancelAuthenticationChallenge:OCMOCK_ANY];
    
    XCTAssertFalse(cancelledAuthInvoked, @"Authentication appears to have been cancelled prematurely.");
    
    NSURLCredential *credential = [[NSURLCredential alloc] initWithTrust:trust];
    NSURLAuthenticationChallenge *authenticationChallenge = [[NSURLAuthenticationChallenge alloc] initWithProtectionSpace:protectionSpace
                                                                                                       proposedCredential:credential
                                                                                                     previousFailureCount:0
                                                                                                          failureResponse:nil
                                                                                                                    error:nil
                                                                                                                   sender:mockedProtocol];
    
    [self.apRequest connection:nil didReceiveAuthenticationChallenge:authenticationChallenge];
    
    XCTAssertTrue(cancelledAuthInvoked, @"Authentication was not cancelled.  Certificate either match or certificate pinning was enabled.");
    XCTAssertTrue([self.apRequest isPinningCertificate], @"Expected certificate pinning to be enabled but found it disabled.");
    
    CFRelease(trust);
    CFRelease(certificate);
}

- (void)testUnitCertificatePinningNotEnabled {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://tests/"];
    
    [self.apRequest setBaseURL:baseURL];
    
    __block BOOL useCredentialInvoked = NO;
    NSURLProtectionSpace *protectionSpace = [self protectionSpaceWithAuthenticationMethod:NSURLAuthenticationMethodServerTrust];
    SecCertificateRef certificate = [self selfSignedCertificate];
    SecTrustRef trust = sectrustWithCertificate(certificate);
    
    id mockedProtectionSpace = [OCMockObject partialMockForObject:protectionSpace];
    
    [[[mockedProtectionSpace stub] andDo:^(NSInvocation *invocation) {
        [invocation setReturnValue:(void *)&trust];
    }] serverTrust];
    
    APMockURLProtocol *protocol = [[APMockURLProtocol alloc] init];
    id mockedProtocol = [OCMockObject partialMockForObject:protocol];
    
    void(^useCredential)(NSInvocation *invocation) = ^(NSInvocation *invocation) {
        useCredentialInvoked = YES;
    };
    
    [[[mockedProtocol stub] andDo:useCredential] useCredential:OCMOCK_ANY forAuthenticationChallenge:OCMOCK_ANY];
    
    XCTAssertFalse(useCredentialInvoked, @"Credentials appear to be invoked when it should not.");
    
    NSURLCredential *credential = [[NSURLCredential alloc] initWithTrust:trust];
    NSURLAuthenticationChallenge *authenticationChallenge = [[NSURLAuthenticationChallenge alloc] initWithProtectionSpace:protectionSpace
                                                                                                       proposedCredential:credential
                                                                                                     previousFailureCount:0
                                                                                                          failureResponse:nil
                                                                                                                    error:nil
                                                                                                                   sender:mockedProtocol];
    
    [self.apRequest connection:nil didReceiveAuthenticationChallenge:authenticationChallenge];
    
    XCTAssertTrue(useCredentialInvoked, @"Credentials were not invoked.  Certificate pinning may have been enabled.");
    XCTAssertFalse([self.apRequest isPinningCertificate], @"Expected certificate pinning to be disabled but found it enabled.");
    
    CFRelease(trust);
    CFRelease(certificate);
}

- (void)testFormattingAPQueryRequests {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://tests/"];
    [AnyPresenceAPI setBaseURL:baseURL];
    [self.apRequest setBaseURL:baseURL];
    
    NSString *resource = @"kids";
    NSDictionary * params = @{ @"scope" : @"all",
                               @"query" : @{ @"name" : @"Rigo",
                                             @"age" : @21,
                                             @"random" : @[@10, @20],
                                             @"key" : @{ @"one" : @"thing",
                                                         @"two" : @"things" } } };
    
    NSString *results = [self.apRequest stringURLTo:resource query:params];
    NSString *expectedResults = @"https://tests/kids?scope=all&query[age]=21&query[random][]=10&query[random][]=20&query[key][one]=thing&query[key][two]=things&query[name]=Rigo";
    
    XCTAssertTrue([results isEqualToString:expectedResults], @"Resulting URL did not match expected URL.");
}

- (void)testAPQueryParamFormatAsString {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://tests/"];
    [AnyPresenceAPI setBaseURL:baseURL];
    [self.apRequest setBaseURL:baseURL];
    
    NSString *resource = @"kids";
    NSDictionary *param = @{ @"query" : @{ @"name" : @"Rigo" } };
    
    NSString *results = [self.apRequest stringURLTo:resource query:param];
    NSString *expectedResults = @"https://tests/kids?query[name]=Rigo";
    
    XCTAssertTrue([results isEqualToString:expectedResults], @"Resulting URL did not match expected URL.");
}

- (void)testAPQueryParamFormatAsNumber {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://tests/"];
    [AnyPresenceAPI setBaseURL:baseURL];
    [self.apRequest setBaseURL:baseURL];
    
    NSString *resource = @"kids";
    NSDictionary *param = @{ @"query" : @{ @"age" : @21 } };
    
    NSString *results = [self.apRequest stringURLTo:resource query:param];
    NSString *expectedResults = @"https://tests/kids?query[age]=21";
    
    XCTAssertTrue([results isEqualToString:expectedResults], @"Resulting URL did not match expected URL.");
}

- (void)testAPQueryParamFormatAsArray {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://tests/"];
    [AnyPresenceAPI setBaseURL:baseURL];
    [self.apRequest setBaseURL:baseURL];
    
    NSString *resource = @"kids";
    NSDictionary *param = @{ @"query" : @{ @"heros" : @[ @"superman", @"batman" ] } };
    
    NSString *results = [self.apRequest stringURLTo:resource query:param];
    NSString *expectedResults = @"https://tests/kids?query[heros][]=superman&query[heros][]=batman";
    
    XCTAssertTrue([results isEqualToString:expectedResults], @"Resulting URL did not match expected URL.");
}

- (void)testAPQueryParamFormatAsDictionary {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://tests/"];
    [AnyPresenceAPI setBaseURL:baseURL];
    [self.apRequest setBaseURL:baseURL];
    
    NSString *resource = @"kids";
    NSDictionary *param = @{ @"query" : @{ @"key" : @{ @"one" : @"thing",
                                                       @"two" : @"things" } } };
    
    NSString *results = [self.apRequest stringURLTo:resource query:param];
    NSString *expectedResults = @"https://tests/kids?query[key][one]=thing&query[key][two]=things";
    
    XCTAssertTrue([results isEqualToString:expectedResults], @"Resulting URL did not match expected URL.");
}

@end
