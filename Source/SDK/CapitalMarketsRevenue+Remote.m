//
//  CapitalMarketsRevenue+Remote.m
//  AnyPresence SDK
//

#import "APObject+Remote.h"
#import "APObject+Internal.h"
#import "CapitalMarketsRevenue+Remote.h"

@implementation CapitalMarketsRevenue (Remote)

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

+ (NSArray *)revenuesWithRegion:(NSString *)region year:(NSNumber *)year error:(NSError **)error {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    
    if (region) {
        NSString *key = @"region";
        key = @"region";

        [params setObject:region forKey:key];
    }

    
    if (year) {
        NSString *key = @"year";
        key = @"year";

        [params setObject:year forKey:key];
    }

    return [self query:@"revenues" params:params context:nil config:[self revenuesConfig] error:error];
}

+ (NSArray *)revenuesWithRegion:(NSString *)region year:(NSNumber *)year context:(id)context error:(NSError **)error {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    
    if (region) {
        NSString *key = @"region";
        key = @"region";

        [params setObject:region forKey:key];
    }

    
    if (year) {
        NSString *key = @"year";
        key = @"year";

        [params setObject:year forKey:key];
    }

    return [self query:@"revenues" params:params context:context config:[self revenuesConfig] error:error];
}

+ (NSArray *)revenuesWithRegion:(NSString *)region year:(NSNumber *)year offset:(NSUInteger)offset limit:(NSUInteger)limit error:(NSError **)error {
   
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    
    if (region) {
        NSString *key = @"region";
        key = @"region";
        [params setObject:region forKey:key];
    }

    
    if (year) {
        NSString *key = @"year";
        key = @"year";
        [params setObject:year forKey:key];
    }

    return [self query:@"revenues" params:params offset:offset limit:limit context:nil config:[self revenuesConfig] error:error];
}

+ (NSArray *)revenuesWithRegion:(NSString *)region year:(NSNumber *)year offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context error:(NSError **)error {
   
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    
    if (region) {
        NSString *key = @"region";
        key = @"region";

        [params setObject:region forKey:key];
    }

    
    if (year) {
        NSString *key = @"year";
        key = @"year";

        [params setObject:year forKey:key];
    }

    return [self query:@"revenues" params:params offset:offset limit:limit context:context config:[self revenuesConfig] error:error];
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

+ (NSArray *)revenuesWithRegion:(NSString *)region year:(NSNumber *)year async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    
    if (region) {
        NSString *key = @"region";
        key = @"region";

        [params setObject:region forKey:key];
    }

    
    if (year) {
        NSString *key = @"year";
        key = @"year";

        [params setObject:year forKey:key];
    }

    return [self query:@"revenues" params:params context:nil config:[self revenuesConfig] async:callback];
}

+ (NSArray *)revenuesWithRegion:(NSString *)region year:(NSNumber *)year context:(id)context async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    
    if (region) {
        NSString *key = @"region";
        key = @"region";

        [params setObject:region forKey:key];
    }

    
    if (year) {
        NSString *key = @"year";
        key = @"year";

        [params setObject:year forKey:key];
    }

    return [self query:@"revenues" params:params context:context config:[self revenuesConfig] async:callback];
}

+ (NSArray *)revenuesWithRegion:(NSString *)region year:(NSNumber *)year offset:(NSUInteger)offset limit:(NSUInteger)limit async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    
    if (region) {
        NSString *key = @"region";
        key = @"region";

        [params setObject:region forKey:key];
    }

    
    if (year) {
        NSString *key = @"year";
        key = @"year";

        [params setObject:year forKey:key];
    }

    return [self query:@"revenues" params:params offset:offset limit:limit context:nil config:[self revenuesConfig] async:callback];
}

+ (NSArray *)revenuesWithRegion:(NSString *)region year:(NSNumber *)year offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:2];
    
    if (region) {
        NSString *key = @"region";
        key = @"region";

        [params setObject:region forKey:key];
    }

    
    if (year) {
        NSString *key = @"year";
        key = @"year";

        [params setObject:year forKey:key];
    }

    return [self query:@"revenues" params:params offset:offset limit:limit context:context config:[self revenuesConfig] async:callback];
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
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"year" forKey:@"year"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"year" forKey:@"year"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
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
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"year" forKey:@"year"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"year" forKey:@"year"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
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
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"year" forKey:@"year"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"year" forKey:@"year"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
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
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"year" forKey:@"year"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"year" forKey:@"year"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
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

+ (APEndPointConfiguration *)revenuesConfig {

    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$.*";
        
        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"year" forKey:@"year"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"year" forKey:@"year"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"id" forKey:@"id"];
    
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";
        config.incrementalPath = @"/revenues";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        [incrementalURLParameters setObject:@"{{query.query.year}}" forKey:@"year"];
        [incrementalURLParameters setObject:@"{{query.query.region}}" forKey:@"region"];
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
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"year" forKey:@"year"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"year" forKey:@"year"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
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
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"year" forKey:@"year"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"year" forKey:@"year"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
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
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"year" forKey:@"year"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"year" forKey:@"year"];
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
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"year" forKey:@"year"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"year" forKey:@"year"];
        [fieldMappings setObject:@"region" forKey:@"region"];
        [fieldMappings setObject:@"profit_loss" forKey:@"profit_loss"];
        [fieldMappings setObject:@"product_name" forKey:@"product_name"];
        [fieldMappings setObject:@"product_id" forKey:@"product_id"];
        [fieldMappings setObject:@"month" forKey:@"month"];
        [fieldMappings setObject:@"gross_comm" forKey:@"gross_comm"];
        [fieldMappings setObject:@"client_tier" forKey:@"client_tier"];
        [fieldMappings setObject:@"client_name" forKey:@"client_name"];
        [fieldMappings setObject:@"client_id" forKey:@"client_id"];
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
