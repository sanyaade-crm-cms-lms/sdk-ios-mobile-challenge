//
//  CapitalMarketsTradingTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "CapitalMarketsTrading.h"

@interface CapitalMarketsTrading (Private)

+ (NSURL *)baseURL;

@end

@interface CapitalMarketsTradingTests : XCTestCase

@end

@implementation CapitalMarketsTradingTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testSettingBaseURLForDataSource {
    
    NSURL *baseURL = [NSURL URLWithString:@"https://citimobilechallenge.anypresenceapp.com/capitalmarkets/v1/api/v1/"];
    [CapitalMarketsTrading setBaseURL:baseURL];
    
    XCTAssertTrue([CapitalMarketsTrading baseURL] == baseURL, @"CapitalMarketsTrading base URL does not match.  Expected %@ and got %@", baseURL, [CapitalMarketsTrading baseURL]);
}

@end
