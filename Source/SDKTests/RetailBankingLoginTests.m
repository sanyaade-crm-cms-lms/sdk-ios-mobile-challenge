//
//  RetailBankingLoginTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "RetailBankingLogin.h"
#import "RetailBanking.h"
#import "APDataManager.h"
#import "APObject+Remote.h"
#import "APObject+Local.h"
#import "MockHTTPURLProtocol.h"

static NSString *const APLocalCertificate   = @"MyCertificate";
static NSString *const APCertificateType    = @"cer";

@interface RetailBankingLoginTests : XCTestCase

@end

@implementation RetailBankingLoginTests

- (void)setUp {
    [super setUp];
    [NSURLProtocol registerClass:[MockHTTPURLProtocol class]];
    [APDataManager setDataManager:[[APDataManager alloc] initWithStore:kAPDataManagerStoreInMemory]];
    [RetailBanking setBaseURL:[NSURL URLWithString:@"http://tests"]];
}

- (void)tearDown {
    [NSURLProtocol unregisterClass:[MockHTTPURLProtocol class]];
    [super tearDown];
}

#pragma mark - Data Source Tests

- (void)testDataSourceMatchesPayloadValue {
    
    NSString *actualDataSource = NSStringFromClass([RetailBankingLogin dataSource]);
    NSString *expectedDataSource = @"RetailBanking";
    
    XCTAssertTrue([actualDataSource isEqualToString:expectedDataSource], @"RetailBankingLogin data source was not set properly.  Expected %@ but got %@", expectedDataSource, actualDataSource);
}

- (void)testSettingCertificateForDataSource {
    
    NSString *certificatePath = [[NSBundle mainBundle] pathForResource:APLocalCertificate ofType:APCertificateType];
    XCTAssertNotNil(certificatePath, @"RetailBankingLogin certificate path is not valid.  Check that resource exists in SDKTestApp's bundle resources.");
    
    [[RetailBankingLogin dataSource] setSSLCertificate:certificatePath];
    
    XCTAssertTrue([[RetailBankingLogin dataSource] class] == [RetailBanking class]);
    
    NSData *actualCertData = [RetailBanking certificate];
    NSData *expectedCertData = [NSData dataWithContentsOfFile:certificatePath];
    
    XCTAssertTrue([actualCertData isEqual:expectedCertData], @"RetailBankingLogin's certificate data was not set properly.");
}

@end
