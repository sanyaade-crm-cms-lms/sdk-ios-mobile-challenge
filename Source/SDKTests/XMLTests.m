//
//  XMLTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSData+Serialization.h"
#import "APEndPointConfiguration.h"

@interface XMLTests : XCTestCase

@end

@implementation XMLTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testFieldMappingForPancakes {
    
    NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:@"pancakes" ofType:@"xml"];
    XCTAssertNotNil(xmlFilePath, @"File path is not valid. Check that it exists in the bundle resource.");
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    APEndPointConfiguration *config = [[APEndPointConfiguration alloc] init];
    config.objectsPath = @"//pancakes/vegan/*";
    config.localToRemoteFieldPathsDictionary = @{@"id":@"id",
                                                 @"color":@"couleur",
                                                 @"sweetness":@"sweetness",
                                                 @"thickness":@"thickness_in_inches",
                                                 @"vegan":@"others/vegan"};
    NSError *error = nil;
    NSArray *objectsDictionaries = [xmlData objectFromXMLWithConfig:config error:&error];
    NSString *expectedObjectsDictionariesFilePath = [[NSBundle mainBundle] pathForResource:@"pancakes_expected_result" ofType:@"plist"];
    NSArray *expectedObjectsDictionaries = [NSArray arrayWithContentsOfFile:expectedObjectsDictionariesFilePath];
    XCTAssertTrue([objectsDictionaries isEqual:(expectedObjectsDictionaries)], @"Expected '%@', got '%@'", expectedObjectsDictionaries, objectsDictionaries);
}

@end
