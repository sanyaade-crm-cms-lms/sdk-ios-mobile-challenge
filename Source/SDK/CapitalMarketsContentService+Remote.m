//
//  CapitalMarketsContentService+Remote.m
//  AnyPresence SDK
//

#import "APObject+Remote.h"
#import "APObject+Internal.h"
#import "CapitalMarketsContentService+Remote.h"

@implementation CapitalMarketsContentService (Remote)

#pragma mark - Public Queries

+ (NSArray *)allError:(NSError **)error {
    return [self query:@"all" params:nil context:nil config:[self allConfig] error:error];
}

+ (NSArray *)allWithContext:(id)context error:(NSError **)error {
    return [self query:@"all" params:nil context:context config:[self allConfig] error:error];
}

+ (NSArray *)allWithOffset:(NSUInteger)offset limit:(NSUInteger)limit error:(NSError **)error {
    return [self query:@"all" params:nil offset:offset limit:limit context:nil config:[self allConfig] error:error];
}

+ (NSArray *)allWithOffset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context error:(NSError **)error {
    return [self query:@"all" params:nil offset:offset limit:limit context:context config:[self allConfig] error:error];
}

+ (NSArray *)exactMatchWithParams:(NSDictionary *)params error:(NSError **)error {
    return [self query:@"exact_match" params:params context:nil config:[self exactMatchConfig] error:error];
}

+ (NSArray *)exactMatchWithParams:(NSDictionary *)params context:(id)context error:(NSError **)error {
    return [self query:@"exact_match" params:params context:context config:[self exactMatchConfig] error:error];
}

+ (NSArray *)exactMatchWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit error:(NSError **)error {
    return [self query:@"exact_match" params:params offset:offset limit:limit context:nil config:[self exactMatchConfig] error:error];
}

+ (NSArray *)exactMatchWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context error:(NSError **)error {
    return [self query:@"exact_match" params:params offset:offset limit:limit context:context config:[self exactMatchConfig] error:error];
}

+ (NSArray *)contentServicesWithType:(NSString *)type error:(NSError **)error {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    
    if (type) {
        NSString *key = @"type";

        [params setObject:type forKey:key];
    }

    return [self query:@"content_services" params:params context:nil config:[self contentServicesConfig] error:error];
}

+ (NSArray *)contentServicesWithType:(NSString *)type context:(id)context error:(NSError **)error {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    
    if (type) {
        NSString *key = @"type";

        [params setObject:type forKey:key];
    }

    return [self query:@"content_services" params:params context:context config:[self contentServicesConfig] error:error];
}

+ (NSArray *)contentServicesWithType:(NSString *)type offset:(NSUInteger)offset limit:(NSUInteger)limit error:(NSError **)error {
   
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    
    if (type) {
        NSString *key = @"type";
        [params setObject:type forKey:key];
    }

    return [self query:@"content_services" params:params offset:offset limit:limit context:nil config:[self contentServicesConfig] error:error];
}

+ (NSArray *)contentServicesWithType:(NSString *)type offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context error:(NSError **)error {
   
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    
    if (type) {
        NSString *key = @"type";

        [params setObject:type forKey:key];
    }

    return [self query:@"content_services" params:params offset:offset limit:limit context:context config:[self contentServicesConfig] error:error];
}

+ (NSNumber *)countError:(NSError **)error {
    return [self aggregateQuery:@"count" params:nil context:nil config:[self countConfig] error:error];
}

+ (NSNumber *)countWithContext:(id)context error:(NSError **)error {
    return [self aggregateQuery:@"count" params:nil context:context config:[self countConfig] error:error];
}

+ (NSNumber *)countExactMatchWithParams:(NSDictionary *)params error:(NSError **)error {
    return [self aggregateQuery:@"count_exact_match" params:params context:nil config:[self countExactMatchConfig] error:error];
}

+ (NSNumber *)countExactMatchWithParams:(NSDictionary *)params context:(id)context error:(NSError **)error {
    return [self aggregateQuery:@"count_exact_match" params:params context:context config:[self countExactMatchConfig] error:error];
}

+ (NSArray *)allAsync:(APObjectsCallback)callback {
    return [self query:@"all" params:nil context:nil config:[self allConfig] async:callback];
}

+ (NSArray *)allWithContext:(id)context async:(APObjectsCallback)callback {
    return [self query:@"all" params:nil context:context config:[self allConfig] async:callback];
}

+ (NSArray *)allWithOffset:(NSUInteger)offset limit:(NSUInteger)limit async:(APObjectsCallback)callback {
    return [self query:@"all" params:nil offset:offset limit:limit context:nil config:[self allConfig] async:callback];
}

+ (NSArray *)allWithOffset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context async:(APObjectsCallback)callback {
    return [self query:@"all" params:nil offset:offset limit:limit context:context config:[self allConfig] async:callback];
}

+ (NSArray *)exactMatchWithParams:(NSDictionary *)params async:(APObjectsCallback)callback {
    return [self query:@"exact_match" params:params context:nil config:[self exactMatchConfig] async:callback];
}

+ (NSArray *)exactMatchWithParams:(NSDictionary *)params context:(id)context async:(APObjectsCallback)callback {
    return [self query:@"exact_match" params:params context:context config:[self exactMatchConfig] async:callback];
}

+ (NSArray *)exactMatchWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit async:(APObjectsCallback)callback {
    return [self query:@"exact_match" params:params offset:offset limit:limit context:nil config:[self exactMatchConfig] async:callback];
}

+ (NSArray *)exactMatchWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context async:(APObjectsCallback)callback {
    return [self query:@"exact_match" params:params offset:offset limit:limit context:context config:[self exactMatchConfig] async:callback];
}

+ (NSArray *)contentServicesWithType:(NSString *)type async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    
    if (type) {
        NSString *key = @"type";

        [params setObject:type forKey:key];
    }

    return [self query:@"content_services" params:params context:nil config:[self contentServicesConfig] async:callback];
}

+ (NSArray *)contentServicesWithType:(NSString *)type context:(id)context async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    
    if (type) {
        NSString *key = @"type";

        [params setObject:type forKey:key];
    }

    return [self query:@"content_services" params:params context:context config:[self contentServicesConfig] async:callback];
}

+ (NSArray *)contentServicesWithType:(NSString *)type offset:(NSUInteger)offset limit:(NSUInteger)limit async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    
    if (type) {
        NSString *key = @"type";

        [params setObject:type forKey:key];
    }

    return [self query:@"content_services" params:params offset:offset limit:limit context:nil config:[self contentServicesConfig] async:callback];
}

+ (NSArray *)contentServicesWithType:(NSString *)type offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:1];
    
    if (type) {
        NSString *key = @"type";

        [params setObject:type forKey:key];
    }

    return [self query:@"content_services" params:params offset:offset limit:limit context:context config:[self contentServicesConfig] async:callback];
}

+ (void)countAsync:(APObjectsCallback)callback {
    [self aggregateQuery:@"count" params:nil context:nil config:[self countConfig] async:callback];
}

+ (void)countWithContext:(id)context async:(APObjectsCallback)callback {
    [self aggregateQuery:@"count" params:nil context:context config:[self countConfig] async:callback];
}

+ (void)countExactMatchWithParams:(NSDictionary *)params async:(APObjectsCallback)callback {
    [self aggregateQuery:@"count_exact_match" params:params context:nil config:[self countExactMatchConfig] async:callback];
}

+ (void)countExactMatchWithParams:(NSDictionary *)params context:(id)context async:(APObjectsCallback)callback {
    [self aggregateQuery:@"count_exact_match" params:params context:context config:[self countExactMatchConfig] async:callback];
}

#pragma mark - Query Endpoint Configurations


+ (APEndPointConfiguration *)allConfig {

    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$.*";
        
        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"id" forKey:@"id"];
    
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        config.incrementalURLParameters = incrementalURLParameters;
       
        config.limit = @"limit";
        config.offset = @"offset";

    });

    return config;
}

+ (APEndPointConfiguration *)exactMatchConfig {

    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$.*";
        
        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"id" forKey:@"id"];
    
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        config.incrementalURLParameters = incrementalURLParameters;
       
        config.limit = @"limit";
        config.offset = @"offset";

    });

    return config;
}

+ (APEndPointConfiguration *)countConfig {

    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$";
        
        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"id" forKey:@"id"];
    
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        config.incrementalURLParameters = incrementalURLParameters;
       
        config.limit = @"limit";
        config.offset = @"offset";

    });

    return config;
}

+ (APEndPointConfiguration *)countExactMatchConfig {

    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$";
        
        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"id" forKey:@"id"];
    
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        config.incrementalURLParameters = incrementalURLParameters;
       
        config.limit = @"limit";
        config.offset = @"offset";

    });

    return config;
}

+ (APEndPointConfiguration *)contentServicesConfig {

    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$.*";
        
        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"id" forKey:@"id"];
    
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";
        config.incrementalPath = @"/content_services";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        [incrementalURLParameters setObject:@"{{query.query.type}}" forKey:@"type"];
        config.incrementalURLParameters = incrementalURLParameters;
       

    });

    return config;
}

#pragma mark - CRUD Overrides

- (BOOL)create:(NSError **)error {
    return [super createWithContext:nil config:[self createConfig] error:error];
}

- (BOOL)createWithContext:(id)context error:(NSError **)error {
    return [super createWithContext:context config:[self createConfig] error:error];
}

- (void)createAsync:(APObjectCallback)callback {
    return [super createAsyncWithContext:nil config:[self createConfig] async:callback];
}

- (void)createAsyncWithContext:(id)context async:(APObjectCallback)callback {
    return [super createAsyncWithContext:context config:[self createConfig] async:callback];
}

- (BOOL)refresh:(NSError **)error {
    return [super refreshWithContext:nil config:[self refreshConfig] error:error];
}

- (BOOL)refreshWithContext:(id)context error:(NSError **)error {
    return [super refreshWithContext:context config:[self refreshConfig] error:error];
}

- (void)refreshAsync:(APObjectCallback)callback {
    return [super refreshAsyncWithContext:nil config:[self refreshConfig] async:callback];
}

- (void)refreshAsyncWithContext:(id)context async:(APObjectCallback)callback {
    return [super refreshAsyncWithContext:context config:[self refreshConfig] async:callback];
}

- (BOOL)update:(NSError **)error {
    return [super updateWithContext:nil config:[self updateConfig] error:error];
}

- (BOOL)updateWithContext:(id)context error:(NSError **)error {
    return [super updateWithContext:context config:[self updateConfig] error:error];
}

- (void)updateAsync:(APObjectCallback)callback {
    return [super updateAsyncWithContext:nil config:[self updateConfig] async:callback];
}

- (void)updateAsyncWithContext:(id)context async:(APObjectCallback)callback {
    return [super updateAsyncWithContext:context config:[self updateConfig] async:callback];
}

- (BOOL)destroy:(NSError **)error {
    return [super destroyWithContext:nil config:[self destroyConfig] error:error];
}

- (BOOL)destroyWithContext:(id)context error:(NSError **)error {
    return [super destroyWithContext:context config:[self destroyConfig] error:error];
}

- (void)destroyAsync:(APObjectCallback)callback {
    return [super destroyAsyncWithContext:nil config:[self destroyConfig] async:callback];
}

- (void)destroyAsyncWithContext:(id)context async:(APObjectCallback)callback {
    return [super destroyAsyncWithContext:context config:[self destroyConfig] async:callback];
}

#pragma mark - CRUD Endpoint Configurations

- (APEndPointConfiguration *)createConfig {
    
    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$";

        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"POST";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        config.incrementalURLParameters = incrementalURLParameters;
    });

    return config;
}

- (APEndPointConfiguration *)refreshConfig {
    
    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$";

        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        config.incrementalURLParameters = incrementalURLParameters;
    });

    return config;
}

- (APEndPointConfiguration *)updateConfig {
    
    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$";

        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"PUT";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        config.incrementalURLParameters = incrementalURLParameters;
    });

    return config;
}

- (APEndPointConfiguration *)destroyConfig {
    
    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;

        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"video_url" forKey:@"video_url"];
        [fieldMappings setObject:@"video_type" forKey:@"video_type"];
        [fieldMappings setObject:@"type" forKey:@"content_services_type"];
        [fieldMappings setObject:@"total_count" forKey:@"total_count"];
        [fieldMappings setObject:@"title" forKey:@"title"];
        [fieldMappings setObject:@"tickers" forKey:@"tickers"];
        [fieldMappings setObject:@"theme_id" forKey:@"theme_id"];
        [fieldMappings setObject:@"template" forKey:@"template"];
        [fieldMappings setObject:@"synopsis" forKey:@"synopsis"];
        [fieldMappings setObject:@"summary" forKey:@"summary"];
        [fieldMappings setObject:@"source" forKey:@"source"];
        [fieldMappings setObject:@"sectors" forKey:@"sectors"];
        [fieldMappings setObject:@"scale" forKey:@"scale"];
        [fieldMappings setObject:@"rnum" forKey:@"rnum"];
        [fieldMappings setObject:@"resdata_url" forKey:@"resdata_url"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"ref_article_url" forKey:@"ref_article_url"];
        [fieldMappings setObject:@"ref_article_title" forKey:@"ref_article_title"];
        [fieldMappings setObject:@"pub_key" forKey:@"pub_key"];
        [fieldMappings setObject:@"pub_id" forKey:@"pub_id"];
        [fieldMappings setObject:@"pub_date" forKey:@"pub_date"];
        [fieldMappings setObject:@"product_type" forKey:@"product_type"];
        [fieldMappings setObject:@"product_list" forKey:@"product_list"];
        [fieldMappings setObject:@"page_count" forKey:@"page_count"];
        [fieldMappings setObject:@"obo_preferred_name" forKey:@"obo_preferred_name"];
        [fieldMappings setObject:@"obo_last_name" forKey:@"obo_last_name"];
        [fieldMappings setObject:@"obo_first_name" forKey:@"obo_first_name"];
        [fieldMappings setObject:@"miliseconds" forKey:@"miliseconds"];
        [fieldMappings setObject:@"menu_code" forKey:@"menu_code"];
        [fieldMappings setObject:@"medial_url_ios" forKey:@"medial_url_ios"];
        [fieldMappings setObject:@"media_url_android" forKey:@"media_url_android"];
        [fieldMappings setObject:@"kv" forKey:@"kv"];
        [fieldMappings setObject:@"image" forKey:@"image"];
        [fieldMappings setObject:@"image_group" forKey:@"image_group"];
        [fieldMappings setObject:@"html_escaped_title" forKey:@"html_escaped_title"];
        [fieldMappings setObject:@"hit_count" forKey:@"hit_count"];
        [fieldMappings setObject:@"headline" forKey:@"headline"];
        [fieldMappings setObject:@"formatted_date_str" forKey:@"formatted_date_str"];
        [fieldMappings setObject:@"formated_pub_date" forKey:@"formated_pub_date"];
        [fieldMappings setObject:@"file_type" forKey:@"file_type"];
        [fieldMappings setObject:@"file_name" forKey:@"file_name"];
        [fieldMappings setObject:@"file_link" forKey:@"file_link"];
        [fieldMappings setObject:@"encrypted_id" forKey:@"encrypted_id"];
        [fieldMappings setObject:@"document_url" forKey:@"document_url"];
        [fieldMappings setObject:@"date_string" forKey:@"date_string"];
        [fieldMappings setObject:@"content_url" forKey:@"content_url"];
        [fieldMappings setObject:@"content_type" forKey:@"content_type"];
        [fieldMappings setObject:@"company" forKey:@"company"];
        [fieldMappings setObject:@"authors" forKey:@"authors"];
        [fieldMappings setObject:@"author_name" forKey:@"author_name"];
        [fieldMappings setObject:@"author_id" forKey:@"author_id"];
        [fieldMappings setObject:@"author_details" forKey:@"author_details"];
        [fieldMappings setObject:@"attachment_id" forKey:@"attachment_id"];
        [fieldMappings setObject:@"asset_class" forKey:@"asset_class"];
        [fieldMappings setObject:@"analyst_type" forKey:@"analyst_type"];
        [fieldMappings setObject:@"analyst_id" forKey:@"analyst_id"];
        [fieldMappings setObject:@"all_attachments" forKey:@"all_attachments"];
        [fieldMappings setObject:@"alert_date" forKey:@"alert_date"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"DELETE";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        config.incrementalURLParameters = incrementalURLParameters;
    });

    return config;
}

@end
