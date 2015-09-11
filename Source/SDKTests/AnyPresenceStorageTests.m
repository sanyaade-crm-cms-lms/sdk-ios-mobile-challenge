//
//  APDataSourceTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "AnyPresenceAPI.h"
#import "APObject+Remote.h"
#import "APRequest.h"

@interface AnyPresenceAPI (Private)

+ (NSURL *)baseURL;

@end

@interface APDataSourceTests : XCTestCase

@end

@implementation APDataSourceTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testSettingBaseURLThruDataSource {
    
    NSURL *baseURL = [NSURL URLWithString:@"http://localhost:3000/api/v1/"];
    [AnyPresenceAPI setBaseURL:baseURL];
    
    XCTAssertTrue([AnyPresenceAPI baseURL] == baseURL, @"AnyPresence base URL does not match.  Expected %@ and got %@", baseURL, [AnyPresenceAPI baseURL]);
}

- (void)testSettingBaseURLThruAPObject {
    
    NSURL *baseURL = [NSURL URLWithString:@"http://localhost:3000/api/v1/"];
    [APObject setBaseURL:baseURL];
    
    XCTAssertTrue([AnyPresenceAPI baseURL] == baseURL, @"AnyPresence base URL does not match.  Expected %@ and got %@", baseURL, [AnyPresenceAPI baseURL]);
}

- (void)testSettingBaseURLThruAPRequest {
    
    NSURL *baseURL = [NSURL URLWithString:@"http://localhost:3000/api/v1/"];
    APRequest *aRequest = [[APRequest alloc] init];
    [aRequest setBaseURL:baseURL];
    
    XCTAssertTrue([AnyPresenceAPI baseURL] == baseURL, @"AnyPresence base URL does not match.  Expected %@ and got %@", baseURL, [AnyPresenceAPI baseURL]);
}

@end
