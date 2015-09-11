//
//  CorporatePaymentsTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "CorporatePayments.h"

@interface CorporatePayments (Private)

+ (NSURL *)baseURL;

@end

@interface CorporatePaymentsTests : XCTestCase

@end

@implementation CorporatePaymentsTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testSettingBaseURLForDataSource {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://citimobilechallenge.anypresenceapp.com/corporatepayments/v1/api/v1/"];
    [CorporatePayments setBaseURL:baseURL];
    
    XCTAssertTrue([CorporatePayments baseURL] == baseURL, @"CorporatePayments base URL does not match.  Expected %@ and got %@", baseURL, [CorporatePayments baseURL]);
}

@end
