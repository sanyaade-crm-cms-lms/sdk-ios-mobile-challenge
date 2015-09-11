//
//  RetailBankingAccountTransactionTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "RetailBankingAccountTransaction.h"
#import "RetailBanking.h"
#import "APDataManager.h"
#import "APObject+Remote.h"
#import "APObject+Local.h"
#import "MockHTTPURLProtocol.h"

static NSString *const APLocalCertificate   = @"MyCertificate";
static NSString *const APCertificateType    = @"cer";

@interface RetailBankingAccountTransactionTests : XCTestCase

@end

@implementation RetailBankingAccountTransactionTests

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
    
    NSString *actualDataSource = NSStringFromClass([RetailBankingAccountTransaction dataSource]);
    NSString *expectedDataSource = @"RetailBanking";
    
    XCTAssertTrue([actualDataSource isEqualToString:expectedDataSource], @"RetailBankingAccountTransaction data source was not set properly.  Expected %@ but got %@", expectedDataSource, actualDataSource);
}

- (void)testSettingCertificateForDataSource {
    
    NSString *certificatePath = [[NSBundle mainBundle] pathForResource:APLocalCertificate ofType:APCertificateType];
    XCTAssertNotNil(certificatePath, @"RetailBankingAccountTransaction certificate path is not valid.  Check that resource exists in SDKTestApp's bundle resources.");
    
    [[RetailBankingAccountTransaction dataSource] setSSLCertificate:certificatePath];
    
    XCTAssertTrue([[RetailBankingAccountTransaction dataSource] class] == [RetailBanking class]);
    
    NSData *actualCertData = [RetailBanking certificate];
    NSData *expectedCertData = [NSData dataWithContentsOfFile:certificatePath];
    
    XCTAssertTrue([actualCertData isEqual:expectedCertData], @"RetailBankingAccountTransaction's certificate data was not set properly.");
}

@end
