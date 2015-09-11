//
//  APServiceTests.m
//  AnyPresence SDK
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "APService.h"
#import "APService+Internal.h"
#import "APService+Requests.h"
#import "APEndPointConfiguration.h"
#import "XDataSource.h"

@interface APRequest (Private)

- (NSURLRequest *)request;

@end

@interface APServiceTests : XCTestCase

@end

@implementation APServiceTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testURLRequestWithNoEndpointConfig {
    
    NSDictionary *query = @{@"QueryKeyA":@"QueryValueA",
                            @"QueryKeyB":@"QueryValueB"};

    APRequest *apRequest = [TestAPService requestWithVerb:kAPRequestVerbRead URL:nil resource:@"resource" id:@"someid" query:query object:nil context:nil config:nil];
    NSURLRequest *urlRequest = [apRequest request];
    
    XCTAssertEqualObjects([urlRequest HTTPMethod], [TestAPService verb:kAPRequestVerbRead]);
    
    NSString *urlAbsolute = [[urlRequest URL] absoluteString];
    NSString *urlQueryOnly = [[urlRequest URL] query];
    NSString *urlWithoutQuery = [urlAbsolute stringByReplacingOccurrencesOfString:urlQueryOnly withString:@""];
    
    BOOL isThereQuery = [urlQueryOnly length];
    BOOL isThereQuestionMarkRightBeforeQuery = NSEqualRanges([urlWithoutQuery rangeOfString:@"?" options:NSBackwardsSearch], NSMakeRange([urlWithoutQuery length]-1, 1));
    NSUInteger numberOfQuestionMarks = [urlWithoutQuery length] - [[urlWithoutQuery stringByReplacingOccurrencesOfString:@"?" withString:@""] length];
    
    XCTAssertTrue((isThereQuery && isThereQuestionMarkRightBeforeQuery && numberOfQuestionMarks == 1) ||
                  (!isThereQuery && numberOfQuestionMarks == 0));
    
    urlWithoutQuery = [urlWithoutQuery stringByReplacingOccurrencesOfString:@"?" withString:@""];
    
    XCTAssertEqualObjects(urlWithoutQuery, @"http://baseURL/resource/someid");
    
    NSArray *urlParametersStringArray = [urlQueryOnly componentsSeparatedByString:@"&"];
    NSMutableDictionary *urlParameters = [NSMutableDictionary dictionary];
    
    for (NSString *urlParameterString in urlParametersStringArray) {
        NSArray *keyAndValue = [urlParameterString componentsSeparatedByString:@"="];
        [urlParameters setValue:keyAndValue[1] forKey:keyAndValue[0]];
    }
    
    NSMutableDictionary *originalURLParameters = [NSMutableDictionary dictionary];
    [originalURLParameters addEntriesFromDictionary:[TestAPService urlParameters]];
    [originalURLParameters addEntriesFromDictionary:query];
    XCTAssertEqualObjects(urlParameters, originalURLParameters);
    
    NSMutableDictionary *httpHeaders = [NSMutableDictionary dictionary];
    [httpHeaders addEntriesFromDictionary:[TestAPService httpHeaders]];
    XCTAssertEqualObjects([urlRequest allHTTPHeaderFields], httpHeaders);
}

- (void)testURLRequestWithEndpointConfig {
    
    NSString *httpVerb = @"HTTPVERB";
    NSDictionary *incrementalHttpHeaders = @{@"IncrementalHeaderKeyA":@"IncrementalHeaderValueA",
                                             @"IncrementalHeaderKeyB":@"IncrementalHeaderValueB"};
    NSDictionary *incrementalURLParameters = @{@"IncrementalURLParametersKeyA":@"IncrementalURLParametersValueA",
                                               @"IncrementalURLParametersKeyB":@"IncrementalURLParametersValueB"};
    NSDictionary *query = @{@"QueryKeyA":@"QueryValueA",
                            @"QueryKeyB":@"QueryValueB"};                                               

    APEndPointConfiguration *config = [[APEndPointConfiguration alloc] init];
    config.httpVerb = httpVerb;
    config.incrementalHttpHeaders = incrementalHttpHeaders;
    config.incrementalURLParameters = incrementalURLParameters;
    config.incrementalPath = @"/incremental/Path";
    APRequest *apRequest = [TestAPService requestWithVerb:kAPRequestVerbRead URL:nil resource:@"resource" id:@"someid" query:query object:nil context:nil config:config];
    NSURLRequest *urlRequest = [apRequest request];
    
    XCTAssertEqualObjects([urlRequest HTTPMethod], httpVerb);
    
    NSString *urlAbsolute = [[urlRequest URL] absoluteString];
    NSString *urlQueryOnly = [[urlRequest URL] query];
    NSString *urlWithoutQuery = [urlAbsolute stringByReplacingOccurrencesOfString:urlQueryOnly withString:@""];
    
    BOOL isThereQuery = [urlQueryOnly length];
    BOOL isThereQuestionMarkRightBeforeQuery = NSEqualRanges([urlWithoutQuery rangeOfString:@"?" options:NSBackwardsSearch], NSMakeRange([urlWithoutQuery length]-1, 1));
    NSUInteger numberOfQuestionMarks = [urlWithoutQuery length] - [[urlWithoutQuery stringByReplacingOccurrencesOfString:@"?" withString:@""] length];
    
    XCTAssertTrue((isThereQuery && isThereQuestionMarkRightBeforeQuery && numberOfQuestionMarks == 1) ||
                  (!isThereQuery && numberOfQuestionMarks == 0));
    
    urlWithoutQuery = [urlWithoutQuery stringByReplacingOccurrencesOfString:@"?" withString:@""];
    
    XCTAssertEqualObjects(urlWithoutQuery, @"http://baseURL/incremental/Path/someid");
    
    NSArray *urlParametersString = [urlQueryOnly componentsSeparatedByString:@"&"];
    NSMutableDictionary *urlParameters = [NSMutableDictionary dictionary];
    
    for (NSString *urlParameterString in urlParametersString) {
        NSArray *keyAndValue = [urlParameterString componentsSeparatedByString:@"="];
        [urlParameters setValue:keyAndValue[1] forKey:keyAndValue[0]];
    }
    
    NSMutableDictionary *originalURLParameters = [NSMutableDictionary dictionary];
    [originalURLParameters addEntriesFromDictionary:[TestAPService urlParameters]];
    [originalURLParameters addEntriesFromDictionary:incrementalURLParameters];
    [originalURLParameters addEntriesFromDictionary:query];
    XCTAssertEqualObjects(urlParameters, originalURLParameters);
    
    NSMutableDictionary *httpHeaders = [NSMutableDictionary dictionary];
    [httpHeaders addEntriesFromDictionary:[TestAPService httpHeaders]];
    [httpHeaders addEntriesFromDictionary:incrementalHttpHeaders];
    XCTAssertEqualObjects([urlRequest allHTTPHeaderFields], httpHeaders);
}

@end
