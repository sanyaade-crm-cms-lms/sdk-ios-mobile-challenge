//
//  RetailBankingLocation+Remote.m
//  AnyPresence SDK
//

#import "APObject+Remote.h"
#import "APObject+Internal.h"
#import "RetailBankingLocation+Remote.h"

@implementation RetailBankingLocation (Remote)

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

+ (NSArray *)locationsWithLatitude:(NSString *)latitude longitude:(NSString *)longitude radius:(NSString *)radius radiusUom:(NSString *)radiusUom locationType:(NSString *)locationType address:(NSString *)address city:(NSString *)city state:(NSString *)state postalCode:(NSString *)postalCode error:(NSError **)error {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:9];
    
    if (latitude) {
        NSString *key = @"latitude";
        key = @"latitude";

        [params setObject:latitude forKey:key];
    }

    
    if (longitude) {
        NSString *key = @"longitude";
        key = @"longitude";

        [params setObject:longitude forKey:key];
    }

    
    if (radius) {
        NSString *key = @"radius";

        [params setObject:radius forKey:key];
    }

    
    if (radiusUom) {
        NSString *key = @"radius_uom";

        [params setObject:radiusUom forKey:key];
    }

    
    if (locationType) {
        NSString *key = @"location_type";
        key = @"location_type";

        [params setObject:locationType forKey:key];
    }

    
    if (address) {
        NSString *key = @"address";

        [params setObject:address forKey:key];
    }

    
    if (city) {
        NSString *key = @"city";
        key = @"city";

        [params setObject:city forKey:key];
    }

    
    if (state) {
        NSString *key = @"state";
        key = @"state";

        [params setObject:state forKey:key];
    }

    
    if (postalCode) {
        NSString *key = @"postal_code";
        key = @"postal_code";

        [params setObject:postalCode forKey:key];
    }

    return [self query:@"locations" params:params context:nil config:[self locationsConfig] error:error];
}

+ (NSArray *)locationsWithLatitude:(NSString *)latitude longitude:(NSString *)longitude radius:(NSString *)radius radiusUom:(NSString *)radiusUom locationType:(NSString *)locationType address:(NSString *)address city:(NSString *)city state:(NSString *)state postalCode:(NSString *)postalCode context:(id)context error:(NSError **)error {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:9];
    
    if (latitude) {
        NSString *key = @"latitude";
        key = @"latitude";

        [params setObject:latitude forKey:key];
    }

    
    if (longitude) {
        NSString *key = @"longitude";
        key = @"longitude";

        [params setObject:longitude forKey:key];
    }

    
    if (radius) {
        NSString *key = @"radius";

        [params setObject:radius forKey:key];
    }

    
    if (radiusUom) {
        NSString *key = @"radius_uom";

        [params setObject:radiusUom forKey:key];
    }

    
    if (locationType) {
        NSString *key = @"location_type";
        key = @"location_type";

        [params setObject:locationType forKey:key];
    }

    
    if (address) {
        NSString *key = @"address";

        [params setObject:address forKey:key];
    }

    
    if (city) {
        NSString *key = @"city";
        key = @"city";

        [params setObject:city forKey:key];
    }

    
    if (state) {
        NSString *key = @"state";
        key = @"state";

        [params setObject:state forKey:key];
    }

    
    if (postalCode) {
        NSString *key = @"postal_code";
        key = @"postal_code";

        [params setObject:postalCode forKey:key];
    }

    return [self query:@"locations" params:params context:context config:[self locationsConfig] error:error];
}

+ (NSArray *)locationsWithLatitude:(NSString *)latitude longitude:(NSString *)longitude radius:(NSString *)radius radiusUom:(NSString *)radiusUom locationType:(NSString *)locationType address:(NSString *)address city:(NSString *)city state:(NSString *)state postalCode:(NSString *)postalCode offset:(NSUInteger)offset limit:(NSUInteger)limit error:(NSError **)error {
   
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:9];
    
    if (latitude) {
        NSString *key = @"latitude";
        key = @"latitude";
        [params setObject:latitude forKey:key];
    }

    
    if (longitude) {
        NSString *key = @"longitude";
        key = @"longitude";
        [params setObject:longitude forKey:key];
    }

    
    if (radius) {
        NSString *key = @"radius";
        [params setObject:radius forKey:key];
    }

    
    if (radiusUom) {
        NSString *key = @"radius_uom";
        [params setObject:radiusUom forKey:key];
    }

    
    if (locationType) {
        NSString *key = @"location_type";
        key = @"location_type";
        [params setObject:locationType forKey:key];
    }

    
    if (address) {
        NSString *key = @"address";
        [params setObject:address forKey:key];
    }

    
    if (city) {
        NSString *key = @"city";
        key = @"city";
        [params setObject:city forKey:key];
    }

    
    if (state) {
        NSString *key = @"state";
        key = @"state";
        [params setObject:state forKey:key];
    }

    
    if (postalCode) {
        NSString *key = @"postal_code";
        key = @"postal_code";
        [params setObject:postalCode forKey:key];
    }

    return [self query:@"locations" params:params offset:offset limit:limit context:nil config:[self locationsConfig] error:error];
}

+ (NSArray *)locationsWithLatitude:(NSString *)latitude longitude:(NSString *)longitude radius:(NSString *)radius radiusUom:(NSString *)radiusUom locationType:(NSString *)locationType address:(NSString *)address city:(NSString *)city state:(NSString *)state postalCode:(NSString *)postalCode offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context error:(NSError **)error {
   
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:9];
    
    if (latitude) {
        NSString *key = @"latitude";
        key = @"latitude";

        [params setObject:latitude forKey:key];
    }

    
    if (longitude) {
        NSString *key = @"longitude";
        key = @"longitude";

        [params setObject:longitude forKey:key];
    }

    
    if (radius) {
        NSString *key = @"radius";

        [params setObject:radius forKey:key];
    }

    
    if (radiusUom) {
        NSString *key = @"radius_uom";

        [params setObject:radiusUom forKey:key];
    }

    
    if (locationType) {
        NSString *key = @"location_type";
        key = @"location_type";

        [params setObject:locationType forKey:key];
    }

    
    if (address) {
        NSString *key = @"address";

        [params setObject:address forKey:key];
    }

    
    if (city) {
        NSString *key = @"city";
        key = @"city";

        [params setObject:city forKey:key];
    }

    
    if (state) {
        NSString *key = @"state";
        key = @"state";

        [params setObject:state forKey:key];
    }

    
    if (postalCode) {
        NSString *key = @"postal_code";
        key = @"postal_code";

        [params setObject:postalCode forKey:key];
    }

    return [self query:@"locations" params:params offset:offset limit:limit context:context config:[self locationsConfig] error:error];
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

+ (NSArray *)locationsWithLatitude:(NSString *)latitude longitude:(NSString *)longitude radius:(NSString *)radius radiusUom:(NSString *)radiusUom locationType:(NSString *)locationType address:(NSString *)address city:(NSString *)city state:(NSString *)state postalCode:(NSString *)postalCode async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:9];
    
    if (latitude) {
        NSString *key = @"latitude";
        key = @"latitude";

        [params setObject:latitude forKey:key];
    }

    
    if (longitude) {
        NSString *key = @"longitude";
        key = @"longitude";

        [params setObject:longitude forKey:key];
    }

    
    if (radius) {
        NSString *key = @"radius";

        [params setObject:radius forKey:key];
    }

    
    if (radiusUom) {
        NSString *key = @"radius_uom";

        [params setObject:radiusUom forKey:key];
    }

    
    if (locationType) {
        NSString *key = @"location_type";
        key = @"location_type";

        [params setObject:locationType forKey:key];
    }

    
    if (address) {
        NSString *key = @"address";

        [params setObject:address forKey:key];
    }

    
    if (city) {
        NSString *key = @"city";
        key = @"city";

        [params setObject:city forKey:key];
    }

    
    if (state) {
        NSString *key = @"state";
        key = @"state";

        [params setObject:state forKey:key];
    }

    
    if (postalCode) {
        NSString *key = @"postal_code";
        key = @"postal_code";

        [params setObject:postalCode forKey:key];
    }

    return [self query:@"locations" params:params context:nil config:[self locationsConfig] async:callback];
}

+ (NSArray *)locationsWithLatitude:(NSString *)latitude longitude:(NSString *)longitude radius:(NSString *)radius radiusUom:(NSString *)radiusUom locationType:(NSString *)locationType address:(NSString *)address city:(NSString *)city state:(NSString *)state postalCode:(NSString *)postalCode context:(id)context async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:9];
    
    if (latitude) {
        NSString *key = @"latitude";
        key = @"latitude";

        [params setObject:latitude forKey:key];
    }

    
    if (longitude) {
        NSString *key = @"longitude";
        key = @"longitude";

        [params setObject:longitude forKey:key];
    }

    
    if (radius) {
        NSString *key = @"radius";

        [params setObject:radius forKey:key];
    }

    
    if (radiusUom) {
        NSString *key = @"radius_uom";

        [params setObject:radiusUom forKey:key];
    }

    
    if (locationType) {
        NSString *key = @"location_type";
        key = @"location_type";

        [params setObject:locationType forKey:key];
    }

    
    if (address) {
        NSString *key = @"address";

        [params setObject:address forKey:key];
    }

    
    if (city) {
        NSString *key = @"city";
        key = @"city";

        [params setObject:city forKey:key];
    }

    
    if (state) {
        NSString *key = @"state";
        key = @"state";

        [params setObject:state forKey:key];
    }

    
    if (postalCode) {
        NSString *key = @"postal_code";
        key = @"postal_code";

        [params setObject:postalCode forKey:key];
    }

    return [self query:@"locations" params:params context:context config:[self locationsConfig] async:callback];
}

+ (NSArray *)locationsWithLatitude:(NSString *)latitude longitude:(NSString *)longitude radius:(NSString *)radius radiusUom:(NSString *)radiusUom locationType:(NSString *)locationType address:(NSString *)address city:(NSString *)city state:(NSString *)state postalCode:(NSString *)postalCode offset:(NSUInteger)offset limit:(NSUInteger)limit async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:9];
    
    if (latitude) {
        NSString *key = @"latitude";
        key = @"latitude";

        [params setObject:latitude forKey:key];
    }

    
    if (longitude) {
        NSString *key = @"longitude";
        key = @"longitude";

        [params setObject:longitude forKey:key];
    }

    
    if (radius) {
        NSString *key = @"radius";

        [params setObject:radius forKey:key];
    }

    
    if (radiusUom) {
        NSString *key = @"radius_uom";

        [params setObject:radiusUom forKey:key];
    }

    
    if (locationType) {
        NSString *key = @"location_type";
        key = @"location_type";

        [params setObject:locationType forKey:key];
    }

    
    if (address) {
        NSString *key = @"address";

        [params setObject:address forKey:key];
    }

    
    if (city) {
        NSString *key = @"city";
        key = @"city";

        [params setObject:city forKey:key];
    }

    
    if (state) {
        NSString *key = @"state";
        key = @"state";

        [params setObject:state forKey:key];
    }

    
    if (postalCode) {
        NSString *key = @"postal_code";
        key = @"postal_code";

        [params setObject:postalCode forKey:key];
    }

    return [self query:@"locations" params:params offset:offset limit:limit context:nil config:[self locationsConfig] async:callback];
}

+ (NSArray *)locationsWithLatitude:(NSString *)latitude longitude:(NSString *)longitude radius:(NSString *)radius radiusUom:(NSString *)radiusUom locationType:(NSString *)locationType address:(NSString *)address city:(NSString *)city state:(NSString *)state postalCode:(NSString *)postalCode offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:9];
    
    if (latitude) {
        NSString *key = @"latitude";
        key = @"latitude";

        [params setObject:latitude forKey:key];
    }

    
    if (longitude) {
        NSString *key = @"longitude";
        key = @"longitude";

        [params setObject:longitude forKey:key];
    }

    
    if (radius) {
        NSString *key = @"radius";

        [params setObject:radius forKey:key];
    }

    
    if (radiusUom) {
        NSString *key = @"radius_uom";

        [params setObject:radiusUom forKey:key];
    }

    
    if (locationType) {
        NSString *key = @"location_type";
        key = @"location_type";

        [params setObject:locationType forKey:key];
    }

    
    if (address) {
        NSString *key = @"address";

        [params setObject:address forKey:key];
    }

    
    if (city) {
        NSString *key = @"city";
        key = @"city";

        [params setObject:city forKey:key];
    }

    
    if (state) {
        NSString *key = @"state";
        key = @"state";

        [params setObject:state forKey:key];
    }

    
    if (postalCode) {
        NSString *key = @"postal_code";
        key = @"postal_code";

        [params setObject:postalCode forKey:key];
    }

    return [self query:@"locations" params:params offset:offset limit:limit context:context config:[self locationsConfig] async:callback];
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
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"state" forKey:@"state"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"state" forKey:@"state"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
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
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"state" forKey:@"state"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"state" forKey:@"state"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
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
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"state" forKey:@"state"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"state" forKey:@"state"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
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
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"state" forKey:@"state"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"state" forKey:@"state"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
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

+ (APEndPointConfiguration *)locationsConfig {

    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$.*";
        
        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"state" forKey:@"state"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"state" forKey:@"state"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"id" forKey:@"id"];
    
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";
        config.incrementalPath = @"/locations";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        [incrementalURLParameters setObject:@"{{query.query.postal_code}}" forKey:@"postal_code"];
        [incrementalURLParameters setObject:@"{{query.query.state}}" forKey:@"state"];
        [incrementalURLParameters setObject:@"{{query.query.city}}" forKey:@"city"];
        [incrementalURLParameters setObject:@"{{query.query.address}}" forKey:@"address"];
        [incrementalURLParameters setObject:@"{{query.query.location_type}}" forKey:@"location_type"];
        [incrementalURLParameters setObject:@"{{query.query.radius_uom}}" forKey:@"radius_uom"];
        [incrementalURLParameters setObject:@"{{query.query.radius}}" forKey:@"radius"];
        [incrementalURLParameters setObject:@"{{query.query.longitude}}" forKey:@"longitude"];
        [incrementalURLParameters setObject:@"{{query.query.latitude}}" forKey:@"latitude"];
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
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"state" forKey:@"state"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"state" forKey:@"state"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
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
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"state" forKey:@"state"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"state" forKey:@"state"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
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
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"state" forKey:@"state"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"state" forKey:@"state"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        
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
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"state" forKey:@"state"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"state" forKey:@"state"];
        [fieldMappings setObject:@"postal_code" forKey:@"postal_code"];
        [fieldMappings setObject:@"phone" forKey:@"phone"];
        [fieldMappings setObject:@"name" forKey:@"name"];
        [fieldMappings setObject:@"longitude" forKey:@"longitude"];
        [fieldMappings setObject:@"location_type" forKey:@"location_type"];
        [fieldMappings setObject:@"latitude" forKey:@"latitude"];
        [fieldMappings setObject:@"external_link" forKey:@"external_link"];
        [fieldMappings setObject:@"country" forKey:@"country"];
        [fieldMappings setObject:@"comments" forKey:@"comments"];
        [fieldMappings setObject:@"city" forKey:@"city"];
        [fieldMappings setObject:@"address_2" forKey:@"address_line_two"];
        [fieldMappings setObject:@"address_1" forKey:@"address_line_one"];
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
