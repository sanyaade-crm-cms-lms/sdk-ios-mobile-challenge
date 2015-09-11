//
//  RetailBankingTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "RetailBanking.h"

@interface RetailBanking (Private)

+ (NSURL *)baseURL;

@end

@interface RetailBankingTests : XCTestCase

@end

@implementation RetailBankingTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testSettingBaseURLForDataSource {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://citimobilechallenge.anypresenceapp.com/retailbanking/v1/api/v1/"];
    [RetailBanking setBaseURL:baseURL];
    
    XCTAssertTrue([RetailBanking baseURL] == baseURL, @"RetailBanking base URL does not match.  Expected %@ and got %@", baseURL, [RetailBanking baseURL]);
}

@end
