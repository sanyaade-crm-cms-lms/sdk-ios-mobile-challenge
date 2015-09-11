//
//  CapitalMarketsActivityTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "CapitalMarketsActivity.h"
#import "CapitalMarketsTrading.h"
#import "APDataManager.h"
#import "APObject+Remote.h"
#import "APObject+Local.h"
#import "MockHTTPURLProtocol.h"

static NSString *const APLocalCertificate   = @"MyCertificate";
static NSString *const APCertificateType    = @"cer";

@interface CapitalMarketsActivityTests : XCTestCase

@end

@implementation CapitalMarketsActivityTests

- (void)setUp {
    [super setUp];
    [NSURLProtocol registerClass:[MockHTTPURLProtocol class]];
    [APDataManager setDataManager:[[APDataManager alloc] initWithStore:kAPDataManagerStoreInMemory]];
    [CapitalMarketsTrading setBaseURL:[NSURL URLWithString:@"http://tests"]];
}

- (void)tearDown {
    [NSURLProtocol unregisterClass:[MockHTTPURLProtocol class]];
    [super tearDown];
}

#pragma mark - Data Source Tests

- (void)testDataSourceMatchesPayloadValue {
    
    NSString *actualDataSource = NSStringFromClass([CapitalMarketsActivity dataSource]);
    NSString *expectedDataSource = @"CapitalMarketsTrading";
    
    XCTAssertTrue([actualDataSource isEqualToString:expectedDataSource], @"CapitalMarketsActivity data source was not set properly.  Expected %@ but got %@", expectedDataSource, actualDataSource);
}

- (void)testSettingCertificateForDataSource {
    
    NSString *certificatePath = [[NSBundle mainBundle] pathForResource:APLocalCertificate ofType:APCertificateType];
    XCTAssertNotNil(certificatePath, @"CapitalMarketsActivity certificate path is not valid.  Check that resource exists in SDKTestApp's bundle resources.");
    
    [[CapitalMarketsActivity dataSource] setSSLCertificate:certificatePath];
    
    XCTAssertTrue([[CapitalMarketsActivity dataSource] class] == [CapitalMarketsTrading class]);
    
    NSData *actualCertData = [CapitalMarketsTrading certificate];
    NSData *expectedCertData = [NSData dataWithContentsOfFile:certificatePath];
    
    XCTAssertTrue([actualCertData isEqual:expectedCertData], @"CapitalMarketsActivity's certificate data was not set properly.");
}

@end
