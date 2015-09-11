//
//  CorporatePaymentsCrossBorderFxPayment+Local.m
//  AnyPresence SDK
//

#import "APObject+Local.h"
#import "CorporatePaymentsCrossBorderFxPayment+Local.h"

@implementation CorporatePaymentsCrossBorderFxPayment (Local)

#pragma mark - Public

+ (NSArray *)allLocalWithOffset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"all" params:nil offset:offset limit:limit];
}

+ (NSArray *)exactMatchLocalWithParams:(NSDictionary *)params offset:(NSUInteger)offset limit:(NSUInteger)limit {
    return [self queryLocal:@"exact_match" params:params offset:offset limit:limit];
}

+ (NSArray *)fxPaymentsLocalWithCitiRef:(NSString *)citiRef customerTxnRef:(NSString *)customerTxnRef toCurrency:(NSString *)toCurrency beneficiaryName:(NSString *)beneficiaryName valueDate:(NSString *)valueDate offset:(NSUInteger)offset limit:(NSUInteger)limit {
    
    NSMutableDictionary * params = [[NSMutableDictionary alloc] initWithCapacity:5];
    if (citiRef) {
        [params setObject:citiRef forKey:@"citi_ref"];
    }

    if (customerTxnRef) {
        [params setObject:customerTxnRef forKey:@"customer_txn_ref"];
    }

    if (toCurrency) {
        [params setObject:toCurrency forKey:@"to_currency"];
    }

    if (beneficiaryName) {
        [params setObject:beneficiaryName forKey:@"beneficiary_name"];
    }

    if (valueDate) {
        [params setObject:valueDate forKey:@"value_date"];
    }

    return [self queryLocal:@"fx_payments" params:params offset:offset limit:limit];
}

@end