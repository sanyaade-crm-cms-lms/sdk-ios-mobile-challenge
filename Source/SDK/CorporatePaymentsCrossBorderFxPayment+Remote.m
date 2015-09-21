//
//  CorporatePaymentsCrossBorderFxPayment+Remote.m
//  AnyPresence SDK
//

#import "APObject+Remote.h"
#import "APObject+Internal.h"
#import "CorporatePaymentsCrossBorderFxPayment+Remote.h"

@implementation CorporatePaymentsCrossBorderFxPayment (Remote)

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

+ (NSArray *)fxPaymentsWithCitiRef:(NSString *)citiRef customerTxnRef:(NSString *)customerTxnRef toCurrency:(NSString *)toCurrency beneficiaryName:(NSString *)beneficiaryName valueDate:(NSString *)valueDate error:(NSError **)error {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:5];
    
    if (citiRef) {
        NSString *key = @"citi_ref";
        key = @"citi_ref";

        [params setObject:citiRef forKey:key];
    }

    
    if (customerTxnRef) {
        NSString *key = @"customer_txn_ref";
        key = @"customer_txn_ref";

        [params setObject:customerTxnRef forKey:key];
    }

    
    if (toCurrency) {
        NSString *key = @"to_currency";
        key = @"to_currency";

        [params setObject:toCurrency forKey:key];
    }

    
    if (beneficiaryName) {
        NSString *key = @"beneficiary_name";
        key = @"beneficiary_name";

        [params setObject:beneficiaryName forKey:key];
    }

    
    if (valueDate) {
        NSString *key = @"value_date";
        key = @"value_date";

        [params setObject:valueDate forKey:key];
    }

    return [self query:@"fx_payments" params:params context:nil config:[self fxPaymentsConfig] error:error];
}

+ (NSArray *)fxPaymentsWithCitiRef:(NSString *)citiRef customerTxnRef:(NSString *)customerTxnRef toCurrency:(NSString *)toCurrency beneficiaryName:(NSString *)beneficiaryName valueDate:(NSString *)valueDate context:(id)context error:(NSError **)error {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:5];
    
    if (citiRef) {
        NSString *key = @"citi_ref";
        key = @"citi_ref";

        [params setObject:citiRef forKey:key];
    }

    
    if (customerTxnRef) {
        NSString *key = @"customer_txn_ref";
        key = @"customer_txn_ref";

        [params setObject:customerTxnRef forKey:key];
    }

    
    if (toCurrency) {
        NSString *key = @"to_currency";
        key = @"to_currency";

        [params setObject:toCurrency forKey:key];
    }

    
    if (beneficiaryName) {
        NSString *key = @"beneficiary_name";
        key = @"beneficiary_name";

        [params setObject:beneficiaryName forKey:key];
    }

    
    if (valueDate) {
        NSString *key = @"value_date";
        key = @"value_date";

        [params setObject:valueDate forKey:key];
    }

    return [self query:@"fx_payments" params:params context:context config:[self fxPaymentsConfig] error:error];
}

+ (NSArray *)fxPaymentsWithCitiRef:(NSString *)citiRef customerTxnRef:(NSString *)customerTxnRef toCurrency:(NSString *)toCurrency beneficiaryName:(NSString *)beneficiaryName valueDate:(NSString *)valueDate offset:(NSUInteger)offset limit:(NSUInteger)limit error:(NSError **)error {
   
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:5];
    
    if (citiRef) {
        NSString *key = @"citi_ref";
        key = @"citi_ref";
        [params setObject:citiRef forKey:key];
    }

    
    if (customerTxnRef) {
        NSString *key = @"customer_txn_ref";
        key = @"customer_txn_ref";
        [params setObject:customerTxnRef forKey:key];
    }

    
    if (toCurrency) {
        NSString *key = @"to_currency";
        key = @"to_currency";
        [params setObject:toCurrency forKey:key];
    }

    
    if (beneficiaryName) {
        NSString *key = @"beneficiary_name";
        key = @"beneficiary_name";
        [params setObject:beneficiaryName forKey:key];
    }

    
    if (valueDate) {
        NSString *key = @"value_date";
        key = @"value_date";
        [params setObject:valueDate forKey:key];
    }

    return [self query:@"fx_payments" params:params offset:offset limit:limit context:nil config:[self fxPaymentsConfig] error:error];
}

+ (NSArray *)fxPaymentsWithCitiRef:(NSString *)citiRef customerTxnRef:(NSString *)customerTxnRef toCurrency:(NSString *)toCurrency beneficiaryName:(NSString *)beneficiaryName valueDate:(NSString *)valueDate offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context error:(NSError **)error {
   
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:5];
    
    if (citiRef) {
        NSString *key = @"citi_ref";
        key = @"citi_ref";

        [params setObject:citiRef forKey:key];
    }

    
    if (customerTxnRef) {
        NSString *key = @"customer_txn_ref";
        key = @"customer_txn_ref";

        [params setObject:customerTxnRef forKey:key];
    }

    
    if (toCurrency) {
        NSString *key = @"to_currency";
        key = @"to_currency";

        [params setObject:toCurrency forKey:key];
    }

    
    if (beneficiaryName) {
        NSString *key = @"beneficiary_name";
        key = @"beneficiary_name";

        [params setObject:beneficiaryName forKey:key];
    }

    
    if (valueDate) {
        NSString *key = @"value_date";
        key = @"value_date";

        [params setObject:valueDate forKey:key];
    }

    return [self query:@"fx_payments" params:params offset:offset limit:limit context:context config:[self fxPaymentsConfig] error:error];
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

+ (NSArray *)fxPaymentsWithCitiRef:(NSString *)citiRef customerTxnRef:(NSString *)customerTxnRef toCurrency:(NSString *)toCurrency beneficiaryName:(NSString *)beneficiaryName valueDate:(NSString *)valueDate async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:5];
    
    if (citiRef) {
        NSString *key = @"citi_ref";
        key = @"citi_ref";

        [params setObject:citiRef forKey:key];
    }

    
    if (customerTxnRef) {
        NSString *key = @"customer_txn_ref";
        key = @"customer_txn_ref";

        [params setObject:customerTxnRef forKey:key];
    }

    
    if (toCurrency) {
        NSString *key = @"to_currency";
        key = @"to_currency";

        [params setObject:toCurrency forKey:key];
    }

    
    if (beneficiaryName) {
        NSString *key = @"beneficiary_name";
        key = @"beneficiary_name";

        [params setObject:beneficiaryName forKey:key];
    }

    
    if (valueDate) {
        NSString *key = @"value_date";
        key = @"value_date";

        [params setObject:valueDate forKey:key];
    }

    return [self query:@"fx_payments" params:params context:nil config:[self fxPaymentsConfig] async:callback];
}

+ (NSArray *)fxPaymentsWithCitiRef:(NSString *)citiRef customerTxnRef:(NSString *)customerTxnRef toCurrency:(NSString *)toCurrency beneficiaryName:(NSString *)beneficiaryName valueDate:(NSString *)valueDate context:(id)context async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:5];
    
    if (citiRef) {
        NSString *key = @"citi_ref";
        key = @"citi_ref";

        [params setObject:citiRef forKey:key];
    }

    
    if (customerTxnRef) {
        NSString *key = @"customer_txn_ref";
        key = @"customer_txn_ref";

        [params setObject:customerTxnRef forKey:key];
    }

    
    if (toCurrency) {
        NSString *key = @"to_currency";
        key = @"to_currency";

        [params setObject:toCurrency forKey:key];
    }

    
    if (beneficiaryName) {
        NSString *key = @"beneficiary_name";
        key = @"beneficiary_name";

        [params setObject:beneficiaryName forKey:key];
    }

    
    if (valueDate) {
        NSString *key = @"value_date";
        key = @"value_date";

        [params setObject:valueDate forKey:key];
    }

    return [self query:@"fx_payments" params:params context:context config:[self fxPaymentsConfig] async:callback];
}

+ (NSArray *)fxPaymentsWithCitiRef:(NSString *)citiRef customerTxnRef:(NSString *)customerTxnRef toCurrency:(NSString *)toCurrency beneficiaryName:(NSString *)beneficiaryName valueDate:(NSString *)valueDate offset:(NSUInteger)offset limit:(NSUInteger)limit async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:5];
    
    if (citiRef) {
        NSString *key = @"citi_ref";
        key = @"citi_ref";

        [params setObject:citiRef forKey:key];
    }

    
    if (customerTxnRef) {
        NSString *key = @"customer_txn_ref";
        key = @"customer_txn_ref";

        [params setObject:customerTxnRef forKey:key];
    }

    
    if (toCurrency) {
        NSString *key = @"to_currency";
        key = @"to_currency";

        [params setObject:toCurrency forKey:key];
    }

    
    if (beneficiaryName) {
        NSString *key = @"beneficiary_name";
        key = @"beneficiary_name";

        [params setObject:beneficiaryName forKey:key];
    }

    
    if (valueDate) {
        NSString *key = @"value_date";
        key = @"value_date";

        [params setObject:valueDate forKey:key];
    }

    return [self query:@"fx_payments" params:params offset:offset limit:limit context:nil config:[self fxPaymentsConfig] async:callback];
}

+ (NSArray *)fxPaymentsWithCitiRef:(NSString *)citiRef customerTxnRef:(NSString *)customerTxnRef toCurrency:(NSString *)toCurrency beneficiaryName:(NSString *)beneficiaryName valueDate:(NSString *)valueDate offset:(NSUInteger)offset limit:(NSUInteger)limit context:(id)context async:(APObjectsCallback)callback {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:5];
    
    if (citiRef) {
        NSString *key = @"citi_ref";
        key = @"citi_ref";

        [params setObject:citiRef forKey:key];
    }

    
    if (customerTxnRef) {
        NSString *key = @"customer_txn_ref";
        key = @"customer_txn_ref";

        [params setObject:customerTxnRef forKey:key];
    }

    
    if (toCurrency) {
        NSString *key = @"to_currency";
        key = @"to_currency";

        [params setObject:toCurrency forKey:key];
    }

    
    if (beneficiaryName) {
        NSString *key = @"beneficiary_name";
        key = @"beneficiary_name";

        [params setObject:beneficiaryName forKey:key];
    }

    
    if (valueDate) {
        NSString *key = @"value_date";
        key = @"value_date";

        [params setObject:valueDate forKey:key];
    }

    return [self query:@"fx_payments" params:params offset:offset limit:limit context:context config:[self fxPaymentsConfig] async:callback];
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
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"status" forKey:@"status"];
    
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
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"status" forKey:@"status"];
    
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
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"status" forKey:@"status"];
    
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
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"status" forKey:@"status"];
    
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

+ (APEndPointConfiguration *)fxPaymentsConfig {

    static dispatch_once_t onceToken;
    static APEndPointConfiguration *config;
    dispatch_once(&onceToken, ^{
        config = [[APEndPointConfiguration alloc] init];
        config.serializationFormat = APSerializationFormatJSON;
        config.objectsPath = @"$.*";
        
        NSMutableDictionary *fieldMappings = [NSMutableDictionary new];

        //Field Mapping definitions at object level.
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
    
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";
        config.incrementalPath = @"/crossborder/fx_payments";

        NSMutableDictionary *incrementalHttpHeaders = [NSMutableDictionary new];
        config.incrementalHttpHeaders = incrementalHttpHeaders;

        NSMutableDictionary *incrementalURLParameters = [NSMutableDictionary new];
        [incrementalURLParameters setObject:@"{{query.query.value_date}}" forKey:@"value_date"];
        [incrementalURLParameters setObject:@"{{query.query.beneficiary_name}}" forKey:@"beneficiary_name"];
        [incrementalURLParameters setObject:@"{{query.query.to_currency}}" forKey:@"to_currency"];
        [incrementalURLParameters setObject:@"{{query.query.customer_txn_ref}}" forKey:@"customer_txn_ref"];
        [incrementalURLParameters setObject:@"{{query.query.citi_ref}}" forKey:@"citi_ref"];
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
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"POST";
        config.incrementalPath = @"/crossborder/fx_payments";

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
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        
        config.localToRemoteFieldPathsDictionary = fieldMappings;
        config.httpVerb = @"GET";
        config.incrementalPath = @"/crossborder/fx_payments/{{params.id}}";

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
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        
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
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];

        //Field Mapping definitions at endpoint level.
        [fieldMappings setObject:@"created_on" forKey:@"created_on"];
        [fieldMappings setObject:@"id" forKey:@"id"];
        [fieldMappings setObject:@"created_by" forKey:@"created_by"];
        [fieldMappings setObject:@"payment_details" forKey:@"payment_details"];
        [fieldMappings setObject:@"beneficiary_address" forKey:@"beneficiary_address"];
        [fieldMappings setObject:@"beneficiary_name" forKey:@"beneficiary_name"];
        [fieldMappings setObject:@"beneficiary_account" forKey:@"beneficiary_account"];
        [fieldMappings setObject:@"beneficiary_bank" forKey:@"beneficiary_bank"];
        [fieldMappings setObject:@"debtor_address" forKey:@"debtor_address"];
        [fieldMappings setObject:@"debtor_account" forKey:@"debtor_account"];
        [fieldMappings setObject:@"debtor_name" forKey:@"debtor_name"];
        [fieldMappings setObject:@"value_date" forKey:@"value_date"];
        [fieldMappings setObject:@"rate_reference" forKey:@"rate_reference"];
        [fieldMappings setObject:@"to_amount" forKey:@"to_amount"];
        [fieldMappings setObject:@"to_currency" forKey:@"to_currency"];
        [fieldMappings setObject:@"from_amount" forKey:@"from_amount"];
        [fieldMappings setObject:@"from_currency" forKey:@"from_currency"];
        [fieldMappings setObject:@"citi_ref" forKey:@"citi_ref"];
        [fieldMappings setObject:@"customer_txn_ref" forKey:@"customer_txn_ref"];
        [fieldMappings setObject:@"status" forKey:@"status"];
        
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
