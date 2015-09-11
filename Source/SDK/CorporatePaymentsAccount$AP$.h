//
//  CorporatePaymentsAccount$AP$.h
//  AnyPresence SDK
//

#import "APInternalObject.h"
#import "Typedefs.h"

@interface CorporatePaymentsAccount$AP$ : APInternalObject

@property (nonatomic, strong) NSString * id;
@property (nonatomic, strong) NSString * accountName;
@property (nonatomic, strong) NSDictionary * baseCurrencyBalances;
@property (nonatomic, strong) NSString * branchName;
@property (nonatomic, strong) NSString * countryIsoCode;
@property (nonatomic, strong) NSString * localCurrencyIsoCode;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * status;

@end
