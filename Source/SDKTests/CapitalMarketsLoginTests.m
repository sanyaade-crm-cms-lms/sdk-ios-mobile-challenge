//
//  CapitalMarketsLoginTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "CapitalMarketsLogin.h"
#import "CapitalMarketsTrading.h"
#import "APDataManager.h"
#import "APObject+Remote.h"
#import "APObject+Local.h"
#import "MockHTTPURLProtocol.h"

static NSString *const APLocalCertificate   = @"MyCertificate";
static NSString *const APCertificateType    = @"cer";

@interface CapitalMarketsLoginTests : XCTestCase

@end

@implementation CapitalMarketsLoginTests

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
    
    NSString *actualDataSource = NSStringFromClass([CapitalMarketsLogin dataSource]);
    NSString *expectedDataSource = @"CapitalMarketsTrading";
    
    XCTAssertTrue([actualDataSource isEqualToString:expectedDataSource], @"CapitalMarketsLogin data source was not set properly.  Expected %@ but got %@", expectedDataSource, actualDataSource);
}

- (void)testSettingCertificateForDataSource {
    
    NSString *certificatePath = [[NSBundle mainBundle] pathForResource:APLocalCertificate ofType:APCertificateType];
    XCTAssertNotNil(certificatePath, @"CapitalMarketsLogin certificate path is not valid.  Check that resource exists in SDKTestApp's bundle resources.");
    
    [[CapitalMarketsLogin dataSource] setSSLCertificate:certificatePath];
    
    XCTAssertTrue([[CapitalMarketsLogin dataSource] class] == [CapitalMarketsTrading class]);
    
    NSData *actualCertData = [CapitalMarketsTrading certificate];
    NSData *expectedCertData = [NSData dataWithContentsOfFile:certificatePath];
    
    XCTAssertTrue([actualCertData isEqual:expectedCertData], @"CapitalMarketsLogin's certificate data was not set properly.");
}

@end
