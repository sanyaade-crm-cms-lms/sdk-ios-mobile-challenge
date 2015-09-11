//
//  CorporatePaymentsCrossBorderFxPaymentTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "CorporatePaymentsCrossBorderFxPayment.h"
#import "CorporatePayments.h"
#import "APDataManager.h"
#import "APObject+Remote.h"
#import "APObject+Local.h"
#import "MockHTTPURLProtocol.h"

static NSString *const APLocalCertificate   = @"MyCertificate";
static NSString *const APCertificateType    = @"cer";

@interface CorporatePaymentsCrossBorderFxPaymentTests : XCTestCase

@end

@implementation CorporatePaymentsCrossBorderFxPaymentTests

- (void)setUp {
    [super setUp];
    [NSURLProtocol registerClass:[MockHTTPURLProtocol class]];
    [APDataManager setDataManager:[[APDataManager alloc] initWithStore:kAPDataManagerStoreInMemory]];
    [CorporatePayments setBaseURL:[NSURL URLWithString:@"http://tests"]];
}

- (void)tearDown {
    [NSURLProtocol unregisterClass:[MockHTTPURLProtocol class]];
    [super tearDown];
}

#pragma mark - Data Source Tests

- (void)testDataSourceMatchesPayloadValue {
    
    NSString *actualDataSource = NSStringFromClass([CorporatePaymentsCrossBorderFxPayment dataSource]);
    NSString *expectedDataSource = @"CorporatePayments";
    
    XCTAssertTrue([actualDataSource isEqualToString:expectedDataSource], @"CorporatePaymentsCrossBorderFxPayment data source was not set properly.  Expected %@ but got %@", expectedDataSource, actualDataSource);
}

- (void)testSettingCertificateForDataSource {
    
    NSString *certificatePath = [[NSBundle mainBundle] pathForResource:APLocalCertificate ofType:APCertificateType];
    XCTAssertNotNil(certificatePath, @"CorporatePaymentsCrossBorderFxPayment certificate path is not valid.  Check that resource exists in SDKTestApp's bundle resources.");
    
    [[CorporatePaymentsCrossBorderFxPayment dataSource] setSSLCertificate:certificatePath];
    
    XCTAssertTrue([[CorporatePaymentsCrossBorderFxPayment dataSource] class] == [CorporatePayments class]);
    
    NSData *actualCertData = [CorporatePayments certificate];
    NSData *expectedCertData = [NSData dataWithContentsOfFile:certificatePath];
    
    XCTAssertTrue([actualCertData isEqual:expectedCertData], @"CorporatePaymentsCrossBorderFxPayment's certificate data was not set properly.");
}

@end
