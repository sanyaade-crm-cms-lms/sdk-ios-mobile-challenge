//
//  JSONTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSData+Serialization.h"
#import "APEndPointConfiguration.h"

@interface JSONTests : XCTestCase

@end

@implementation JSONTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testFieldMappingForPancakes {
    
    NSString *jsonFilePath = [[NSBundle mainBundle] pathForResource:@"pancakes" ofType:@"json"];
    XCTAssertNotNil(jsonFilePath, @"File path is not valid. Check that it exists in the bundle resource.");
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonFilePath];
    APEndPointConfiguration *config = [[APEndPointConfiguration alloc] init];
    config.objectsPath = @"$.pancakes.vegan.*";
    config.localToRemoteFieldPathsDictionary = @{@"id":@"id",
                                                 @"color":@"couleur",
                                                 @"sweetness":@"sweetness",
                                                 @"thickness":@"thickness_in_inches",
                                                 @"vegan":@"others.vegan"};
    NSError *error = nil;
    NSArray *objectsDictionaries = [jsonData objectFromJSONWithConfig:config error:&error];
    NSString *expectedObjectsDictionariesFilePath = [[NSBundle mainBundle] pathForResource:@"pancakes_expected_result" ofType:@"plist"];
    NSArray *expectedObjectsDictionaries = [NSArray arrayWithContentsOfFile:expectedObjectsDictionariesFilePath];
    XCTAssertTrue([objectsDictionaries isEqual:(expectedObjectsDictionaries)], @"Expected '%@', got '%@'", expectedObjectsDictionaries, objectsDictionaries);
}

@end
