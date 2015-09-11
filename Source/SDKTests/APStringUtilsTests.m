//
//  APStringUtilsTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "APStringUtils.h"
#import "APTestClasses.h"
#import "APObject+Reflection.h"

@interface APStringUtilsTests : XCTestCase

@property (nonatomic, strong) XAddress *address;
@property (nonatomic, strong) XStore *store;
@property (nonatomic, strong) XProduct *product;

@end

@implementation APStringUtilsTests

- (void)setUp {
    
    [super setUp];
    
    self.address = [XAddress new];
    self.address.street = @"100 West";
    self.address.city = @"Miami";
    self.address.state = @"FL";
    self.address.zip = @33100;
    
    self.store = [XStore new];
    self.store.name = @"Walmart";
    self.store.managerName = @"John";
    self.store.address = self.address;
    
    self.product = [XProduct new];
    self.product.name = @"apple";
    self.product.brand = @"Sundowner";
    self.product.quantity = @20;
    self.product.color = @"red";
    self.product.sweetness = @"sweet";
}

- (void)tearDown {
    self.address = nil;
    self.store = nil;
    self.product = nil;
    [super tearDown];
}

#pragma mark - Test Context Methods

- (void)testNilContextWithNilSelfInstance {
    
    NSDictionary *finalContext = [APStringUtils context:nil withInstanceOfSelf:nil];
    
    XCTAssertNotNil(finalContext);
    XCTAssertTrue([finalContext isEqualToDictionary:@{}]);
}

- (void)testNilContextWithSelfInstance {
    
    NSDictionary *finalContext = [APStringUtils context:nil withInstanceOfSelf:self.product];
    NSDictionary *expectedContext = @{ @":" : self.product };
    
    XCTAssertTrue([finalContext isEqualToDictionary:expectedContext]);
}

- (void)testContextAsDictionaryWithNilSelfInstance {
    
    NSDictionary *context = @{ @"addr" : self.store };
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:nil];
    NSDictionary *expectedContext = @{ @"addr" : self.store };
    
    XCTAssertTrue([finalContext isEqualToDictionary:expectedContext]);
}

- (void)testContextAsDictionaryWithSelfInstance {
    
    NSDictionary *context = @{ @"addr" : self.store };
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:self.product];
    NSDictionary *expectedContext = @{ @":" : self.product,
                                       @"addr" : self.store };
    
    XCTAssertTrue([finalContext isEqualToDictionary:expectedContext]);
}

- (void)testContextAsObjectWithNilSelfInstance {
    
    id context = self.store;
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:nil];
    NSDictionary *expectedContext = @{ @":" : self.store };
    
    XCTAssertTrue([finalContext isEqualToDictionary:expectedContext]);
}

- (void)testContextAsObjectWithSelfInstance {
    
    XObject *myself = [XObject new];
    myself.color = @"white";
    myself.sweetness = @"sweet";
    
    id context = self.address;
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:myself];
    NSMutableDictionary *expectedContext = [NSMutableDictionary dictionaryWithDictionary:@{ @":" : context }];
    [expectedContext addEntriesFromDictionary:[myself data]];
    
    XCTAssertTrue([finalContext isEqualToDictionary:expectedContext]);
}

#pragma mark - Test String Interpolation

- (void)testInterpolationWithNilContextAndNilSelf {
    
    NSDictionary *context = [APStringUtils context:nil withInstanceOfSelf:nil];
    
    NSString *template = @"Went to {{name}} and spoke to {{managerName}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:context];
    
    XCTAssertTrue([interpolatedStr isEqualToString:template]);
}

- (void)testInterpolationWithNilContextButWithSelf {
    
    NSDictionary *finalContext = [APStringUtils context:nil withInstanceOfSelf:self.product];
    
    NSString *template = @"Bought a {{brand}} {{name}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"Bought a Sundowner apple.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithNilContextButWithSelfAndInvalidTemplate {
    
    NSDictionary *finalContext = [APStringUtils context:nil withInstanceOfSelf:self.product];
    
    NSString *template = @"Bought a {{brand-}} {{name-}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected;
    
    XCTAssertTrue([interpolatedStr isEqualToString:template]);
    
    template = @"Bought a {{brand-}} {{name}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Bought a {{brand-}} apple.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    template = @"Bought a {{brand}} {{name-}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Bought a Sundowner {{name-}}.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithContextAsDictionaryAndNilSelf {
    
    NSDictionary *context = @{ @"stor" : self.store,
                               @"addr" : self.address };
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:nil];
    
    NSString *template = @"Went to {{stor.name}} and spoke to {{stor.managerName}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"Went to Walmart and spoke to John.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    template = @"Located at {{addr.street}} in {{addr.city}}, {{addr.state}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Located at 100 West in Miami, FL.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    template = @"Located at {{addr.street}} by {{stor.name}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Located at 100 West by Walmart.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithContextAsDictionaryAndNilSelfAndInvalidTemplate {
    
    NSDictionary *context = @{ @"stor" : self.store,
                               @"addr" : self.address };
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:nil];
    
    NSString *template = @"Went to {{name}} and spoke to {{managerName}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected;
    
    XCTAssertTrue([interpolatedStr isEqualToString:template]);
    
    template = @"Located at {{street}} in {{addr.city}}, {{addr.state}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Located at {{street}} in Miami, FL.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    template = @"Located at {{addr.street}} by {{name}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Located at 100 West by {{name}}.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithContextAsDictionaryAndSelf {
    
    NSDictionary *context = @{ @"stor" : self.store,
                               @"addr" : self.address };
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:self.product];
    
    // Just stor
    NSString *template = @"Went to {{stor.name}} and spoke to {{stor.managerName}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"Went to Walmart and spoke to John.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    //Just addr
    template = @"Visited {{addr.street}} in {{addr.city}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Visited 100 West in Miami.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    //Combine stor + addr
    template = @"Visited {{stor.name}} in {{addr.city}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Visited Walmart in Miami.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    //Just product (self)
    template = @"Grab {{quantity}} of those {{name}}(s).";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Grab 20 of those apple(s).";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    //Use store + addr + product (self)
    template = @"If you're by {{stor.name}} at {{addr.street}}, grab me {{quantity}} {{name}}(s).";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"If you're by Walmart at 100 West, grab me 20 apple(s).";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithContextAsDictionaryAndSelfAndInvalidTemplate {
    
    NSDictionary *context = @{ @"stor" : self.store,
                               @"addr" : self.address };
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:self.product];
    
    // Just stor
    NSString *template = @"Went to {{sto.name}} and spoke to {{stor.managerName}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"Went to {{sto.name}} and spoke to John.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    template = @"Went to {{stor.name}} and spoke to {{stor.managerNames}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Went to Walmart and spoke to {{stor.managerNames}}.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    //Just addr
    template = @"Visited {{addr.street}} in {{add.city}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Visited 100 West in {{add.city}}.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    template = @"Visited {{addr.streets}} in {{addr.city}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Visited {{addr.streets}} in Miami.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    //Combine stor + addr
    template = @"Visited {{add.name}} in {{sto.city}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    
    XCTAssertTrue([interpolatedStr isEqualToString:template]);
    
    template = @"Visited {{addr.names}} in {{stor.cities}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    
    XCTAssertTrue([interpolatedStr isEqualToString:template]);
    
    //Just product (self)
    template = @"Grab {{quantitys}} of those {{names}}(s).";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    
    XCTAssertTrue([interpolatedStr isEqualToString:template]);
    
    //Use store + addr + product (self)
    template = @"If you're by {{stor.name}} at {{addr.street}}, grab me {{quantitys}} {{names}}(s).";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"If you're by Walmart at 100 West, grab me {{quantitys}} {{names}}(s).";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    template = @"If you're by {{sto.name}} at {{add.street}}, grab me {{quantity}} {{name}}(s).";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"If you're by {{sto.name}} at {{add.street}}, grab me 20 apple(s).";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    template = @"If you're by {{sto.name}} at {{add.street}}, grab me {{quantitys}} {{names}}(s).";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    
    XCTAssertTrue([interpolatedStr isEqualToString:template]);
    
    template = @"If you're by {{stor.names}} at {{addr.streets}}, grab me {{quantitys}} {{names}}(s).";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    
    XCTAssertTrue([interpolatedStr isEqualToString:template]);
}

- (void)testInterpolationWithContextAsDictionaryAndSelfWithSimilarPropertyNames {
    
    NSDictionary *context = @{ @"stor" : self.store };
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:self.product];
    
    // 1st name should come from XStore (context) and 2nd from XProduct (self).
    NSString *template = @"Went to {{stor.name}} and spoke to {{stor.managerName}} about {{name}}(s).";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"Went to Walmart and spoke to John about apple(s).";
    NSString *wrongInterpolation1 = @"Went to Walmart and spoke to John about Walmart.";
    NSString *wrongInterpolation2 = @"Went to apple and spoke to John about apple.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    XCTAssertFalse([interpolatedStr isEqualToString:wrongInterpolation1]);
    XCTAssertFalse([interpolatedStr isEqualToString:wrongInterpolation2]);
}

- (void)testInterpolationWithContextAsObjectAndNilSelf {
    
    id context = self.store;
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:nil];
    
    NSString *template = @"Went to {{name}} and spoke to {{managerName}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"Went to Walmart and spoke to John.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithContextAsObjectAndNilSelfAndInvalidTemplate {
    
    id context = self.store;
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:nil];
    
    NSString *template = @"Went to {{names}} and spoke to {{managerNames}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected;
    
    XCTAssertTrue([interpolatedStr isEqualToString:template]);
    
    template = @"Went to {{names}} and spoke to {{managerName}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Went to {{names}} and spoke to John.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    
    template = @"Went to {{name}} and spoke to {{managerNames}}.";
    interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    expected = @"Went to Walmart and spoke to {{managerNames}}.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithContextAsObjectAndSelfUsingContext {
    
    XObject *myself = [XObject new];
    myself.color = @"green";
    myself.sweetness = @"sour";
    
    id context = self.product;
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:myself];
    
    // Results should come from user provided context object.
    NSString *template = @"A {{color}} {{name}} is {{sweetness}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"A red apple is sweet.";
    NSString *wrongInterpolation = @"A green apple is sour.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
    XCTAssertFalse([interpolatedStr isEqualToString:wrongInterpolation]);
}

- (void)testInterpolationWithContextAsObjectAndSelfUsingSelf {
    
    XObject *myself = [XObject new];
    myself.color = @"green";
    myself.sweetness = @"sour";
    myself.thickness = @10;
    
    id context = self.product;
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:myself];
    
    NSString *template = @"Thickness is {{thickness}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"Thickness is 10.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithContextAsObjectAndSelfUsingSelfUsingBoth {
    
    XObject *myself = [XObject new];
    myself.color = @"green";
    myself.sweetness = @"sour";
    myself.thickness = @3;
    
    id context = self.product;
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:myself];
    
    NSString *template = @"A {{color}} apple can be {{thickness}}\" thick.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"A red apple can be 3\" thick.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithContextAsObjectAndSelfWithNestedObjects {
    
    XObject *myself = [XObject new];
    myself.color = @"green";
    myself.sweetness = @"sour";
    myself.thickness = @3;
    
    id context = self.store;
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:myself];
    
    NSString *template = @"{{name}} is at {{address.street}}. The store is {{color}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"Walmart is at 100 West. The store is green.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

- (void)testInterpolationWithContextAsDictionaryAndSelfWithNestedObjects {
    
    id context = @{ @"stor" : self.store,
                    @"addr" : self.address };
    NSDictionary *finalContext = [APStringUtils context:context withInstanceOfSelf:self.product];
    
    NSString *template = @"{{stor.name}} is at {{stor.address.street}}.  Again, its at {{addr.street}}.";
    NSString *interpolatedStr = [APStringUtils interpolateString:template withObject:finalContext];
    NSString *expected = @"Walmart is at 100 West.  Again, its at 100 West.";
    
    XCTAssertTrue([interpolatedStr isEqualToString:expected]);
}

@end
