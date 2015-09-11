//
//  CapitalMarketsContactTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "CapitalMarketsContact.h"
#import "CapitalMarketsTrading.h"
#import "APDataManager.h"
#import "APObject+Remote.h"
#import "APObject+Local.h"
#import "MockHTTPURLProtocol.h"

static NSString *const APLocalCertificate   = @"MyCertificate";
static NSString *const APCertificateType    = @"cer";

@interface CapitalMarketsContactTests : XCTestCase

@end

@implementation CapitalMarketsContactTests

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
    
    NSString *actualDataSource = NSStringFromClass([CapitalMarketsContact dataSource]);
    NSString *expectedDataSource = @"CapitalMarketsTrading";
    
    XCTAssertTrue([actualDataSource isEqualToString:expectedDataSource], @"CapitalMarketsContact data source was not set properly.  Expected %@ but got %@", expectedDataSource, actualDataSource);
}

- (void)testSettingCertificateForDataSource {
    
    NSString *certificatePath = [[NSBundle mainBundle] pathForResource:APLocalCertificate ofType:APCertificateType];
    XCTAssertNotNil(certificatePath, @"CapitalMarketsContact certificate path is not valid.  Check that resource exists in SDKTestApp's bundle resources.");
    
    [[CapitalMarketsContact dataSource] setSSLCertificate:certificatePath];
    
    XCTAssertTrue([[CapitalMarketsContact dataSource] class] == [CapitalMarketsTrading class]);
    
    NSData *actualCertData = [CapitalMarketsTrading certificate];
    NSData *expectedCertData = [NSData dataWithContentsOfFile:certificatePath];
    
    XCTAssertTrue([actualCertData isEqual:expectedCertData], @"CapitalMarketsContact's certificate data was not set properly.");
}

@end
