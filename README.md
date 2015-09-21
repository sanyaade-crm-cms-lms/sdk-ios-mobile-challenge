#CitiMobileChallenge SDK

## Description

This should serve as a guide for the iOS SDK for CitiMobileChallenge.

- [CitiMobileChallengeSdk](#citimobilechallengesdk)
  - [Table of Contents](#table-of-contents)
  - [Project Structure](#project-structure)
  - [Adding SDK to Application](#adding-sdk-to-application)
  - [Setup](#setup)
  - [CRUD](#crud)
  - [Local Caching](#local-caching)
  - [D2S Context Usage](d2s-context-usage)
  - [Push Notification](#push-notification)

## Project Structure
  
    
    - [CapitalMarketsActivity](#capitalmarketsactivity)
      - [Create](#create)
      - [Update](#update)
      - [Read](#read)
      - [Delete](#delete)
      - [Query Scopes](#query-scopes)
      
        - [CapitalMarketsActivityAll](#capitalmarketsactivityall)
        - [CapitalMarketsActivityExactMatch](#capitalmarketsactivityexactmatch)
        - [CapitalMarketsActivityCount](#capitalmarketsactivitycount)
        - [CapitalMarketsActivityCountExactMatch](#capitalmarketsactivitycountexactmatch)
        - [CapitalMarketsActivityActivities](#capitalmarketsactivityactivities)
   
    
    - [CapitalMarketsContact](#capitalmarketscontact)
      - [Create](#create-1)
      - [Update](#update-1)
      - [Read](#read-1)
      - [Delete](#delete-1)
      - [Query Scopes](#query-scopes-1)
      
        - [CapitalMarketsContactAll](#capitalmarketscontactall)
        - [CapitalMarketsContactExactMatch](#capitalmarketscontactexactmatch)
        - [CapitalMarketsContactCount](#capitalmarketscontactcount)
        - [CapitalMarketsContactCountExactMatch](#capitalmarketscontactcountexactmatch)
        - [CapitalMarketsContactContacts](#capitalmarketscontactcontacts)
   
    
    - [CapitalMarketsContentService](#capitalmarketscontentservice)
      - [Create](#create-2)
      - [Update](#update-2)
      - [Read](#read-2)
      - [Delete](#delete-2)
      - [Query Scopes](#query-scopes-2)
      
        - [CapitalMarketsContentServiceAll](#capitalmarketscontentserviceall)
        - [CapitalMarketsContentServiceExactMatch](#capitalmarketscontentserviceexactmatch)
        - [CapitalMarketsContentServiceCount](#capitalmarketscontentservicecount)
        - [CapitalMarketsContentServiceCountExactMatch](#capitalmarketscontentservicecountexactmatch)
        - [CapitalMarketsContentServiceContentServices](#capitalmarketscontentservicecontentservices)
   
    
    - [CapitalMarketsLogin](#capitalmarketslogin)
      - [Create](#create-3)
      - [Update](#update-3)
      - [Read](#read-3)
      - [Delete](#delete-3)
      - [Query Scopes](#query-scopes-3)
      
        - [CapitalMarketsLoginAll](#capitalmarketsloginall)
        - [CapitalMarketsLoginExactMatch](#capitalmarketsloginexactmatch)
        - [CapitalMarketsLoginCount](#capitalmarketslogincount)
        - [CapitalMarketsLoginCountExactMatch](#capitalmarketslogincountexactmatch)
   
    
    - [CapitalMarketsOrder](#capitalmarketsorder)
      - [Create](#create-4)
      - [Update](#update-4)
      - [Read](#read-4)
      - [Delete](#delete-4)
      - [Query Scopes](#query-scopes-4)
      
        - [CapitalMarketsOrderAll](#capitalmarketsorderall)
        - [CapitalMarketsOrderExactMatch](#capitalmarketsorderexactmatch)
        - [CapitalMarketsOrderCount](#capitalmarketsordercount)
        - [CapitalMarketsOrderCountExactMatch](#capitalmarketsordercountexactmatch)
   
    
    - [CapitalMarketsRevenue](#capitalmarketsrevenue)
      - [Create](#create-5)
      - [Update](#update-5)
      - [Read](#read-5)
      - [Delete](#delete-5)
      - [Query Scopes](#query-scopes-5)
      
        - [CapitalMarketsRevenueAll](#capitalmarketsrevenueall)
        - [CapitalMarketsRevenueExactMatch](#capitalmarketsrevenueexactmatch)
        - [CapitalMarketsRevenueCount](#capitalmarketsrevenuecount)
        - [CapitalMarketsRevenueCountExactMatch](#capitalmarketsrevenuecountexactmatch)
        - [CapitalMarketsRevenueRevenues](#capitalmarketsrevenuerevenues)
   
    
    - [CorporatePaymentsAccount](#corporatepaymentsaccount)
      - [Create](#create-6)
      - [Update](#update-6)
      - [Read](#read-6)
      - [Delete](#delete-6)
      - [Query Scopes](#query-scopes-6)
      
        - [CorporatePaymentsAccountAll](#corporatepaymentsaccountall)
        - [CorporatePaymentsAccountExactMatch](#corporatepaymentsaccountexactmatch)
        - [CorporatePaymentsAccountCount](#corporatepaymentsaccountcount)
        - [CorporatePaymentsAccountCountExactMatch](#corporatepaymentsaccountcountexactmatch)
   
    
    - [CorporatePaymentsBeneficiary](#corporatepaymentsbeneficiary)
      - [Create](#create-7)
      - [Update](#update-7)
      - [Read](#read-7)
      - [Delete](#delete-7)
      - [Query Scopes](#query-scopes-7)
      
        - [CorporatePaymentsBeneficiaryAll](#corporatepaymentsbeneficiaryall)
        - [CorporatePaymentsBeneficiaryExactMatch](#corporatepaymentsbeneficiaryexactmatch)
        - [CorporatePaymentsBeneficiaryCount](#corporatepaymentsbeneficiarycount)
        - [CorporatePaymentsBeneficiaryCountExactMatch](#corporatepaymentsbeneficiarycountexactmatch)
   
    
    - [CorporatePaymentsCrossBorderFxBooking](#corporatepaymentscrossborderfxbooking)
      - [Create](#create-8)
      - [Update](#update-8)
      - [Read](#read-8)
      - [Delete](#delete-8)
      - [Query Scopes](#query-scopes-8)
      
        - [CorporatePaymentsCrossBorderFxBookingAll](#corporatepaymentscrossborderfxbookingall)
        - [CorporatePaymentsCrossBorderFxBookingExactMatch](#corporatepaymentscrossborderfxbookingexactmatch)
        - [CorporatePaymentsCrossBorderFxBookingCount](#corporatepaymentscrossborderfxbookingcount)
        - [CorporatePaymentsCrossBorderFxBookingCountExactMatch](#corporatepaymentscrossborderfxbookingcountexactmatch)
   
    
    - [CorporatePaymentsCrossBorderFxPayment](#corporatepaymentscrossborderfxpayment)
      - [Create](#create-9)
      - [Update](#update-9)
      - [Read](#read-9)
      - [Delete](#delete-9)
      - [Query Scopes](#query-scopes-9)
      
        - [CorporatePaymentsCrossBorderFxPaymentAll](#corporatepaymentscrossborderfxpaymentall)
        - [CorporatePaymentsCrossBorderFxPaymentExactMatch](#corporatepaymentscrossborderfxpaymentexactmatch)
        - [CorporatePaymentsCrossBorderFxPaymentCount](#corporatepaymentscrossborderfxpaymentcount)
        - [CorporatePaymentsCrossBorderFxPaymentCountExactMatch](#corporatepaymentscrossborderfxpaymentcountexactmatch)
        - [CorporatePaymentsCrossBorderFxPaymentFxPayments](#corporatepaymentscrossborderfxpaymentfxpayments)
   
    
    - [CorporatePaymentsCrossBorderFxQuote](#corporatepaymentscrossborderfxquote)
      - [Create](#create-10)
      - [Update](#update-10)
      - [Read](#read-10)
      - [Delete](#delete-10)
      - [Query Scopes](#query-scopes-10)
      
        - [CorporatePaymentsCrossBorderFxQuoteAll](#corporatepaymentscrossborderfxquoteall)
        - [CorporatePaymentsCrossBorderFxQuoteExactMatch](#corporatepaymentscrossborderfxquoteexactmatch)
        - [CorporatePaymentsCrossBorderFxQuoteCount](#corporatepaymentscrossborderfxquotecount)
        - [CorporatePaymentsCrossBorderFxQuoteCountExactMatch](#corporatepaymentscrossborderfxquotecountexactmatch)
   
    
    - [CorporatePaymentsLogin](#corporatepaymentslogin)
      - [Create](#create-11)
      - [Update](#update-11)
      - [Read](#read-11)
      - [Delete](#delete-11)
      - [Query Scopes](#query-scopes-11)
      
        - [CorporatePaymentsLoginAll](#corporatepaymentsloginall)
        - [CorporatePaymentsLoginExactMatch](#corporatepaymentsloginexactmatch)
        - [CorporatePaymentsLoginCount](#corporatepaymentslogincount)
        - [CorporatePaymentsLoginCountExactMatch](#corporatepaymentslogincountexactmatch)
   
    
    - [CorporatePaymentsPayment](#corporatepaymentspayment)
      - [Create](#create-12)
      - [Update](#update-12)
      - [Read](#read-12)
      - [Delete](#delete-12)
      - [Query Scopes](#query-scopes-12)
      
        - [CorporatePaymentsPaymentAll](#corporatepaymentspaymentall)
        - [CorporatePaymentsPaymentExactMatch](#corporatepaymentspaymentexactmatch)
        - [CorporatePaymentsPaymentCount](#corporatepaymentspaymentcount)
        - [CorporatePaymentsPaymentCountExactMatch](#corporatepaymentspaymentcountexactmatch)
   
    
    - [RetailBankingAccount](#retailbankingaccount)
      - [Create](#create-13)
      - [Update](#update-13)
      - [Read](#read-13)
      - [Delete](#delete-13)
      - [Query Scopes](#query-scopes-13)
      
        - [RetailBankingAccountAll](#retailbankingaccountall)
        - [RetailBankingAccountExactMatch](#retailbankingaccountexactmatch)
        - [RetailBankingAccountCount](#retailbankingaccountcount)
        - [RetailBankingAccountCountExactMatch](#retailbankingaccountcountexactmatch)
   
    
    - [RetailBankingAccountBalance](#retailbankingaccountbalance)
      - [Create](#create-14)
      - [Update](#update-14)
      - [Read](#read-14)
      - [Delete](#delete-14)
      - [Query Scopes](#query-scopes-14)
      
        - [RetailBankingAccountBalanceAll](#retailbankingaccountbalanceall)
        - [RetailBankingAccountBalanceExactMatch](#retailbankingaccountbalanceexactmatch)
        - [RetailBankingAccountBalanceCount](#retailbankingaccountbalancecount)
        - [RetailBankingAccountBalanceCountExactMatch](#retailbankingaccountbalancecountexactmatch)
   
    
    - [RetailBankingAccountFundTransfer](#retailbankingaccountfundtransfer)
      - [Create](#create-15)
      - [Update](#update-15)
      - [Read](#read-15)
      - [Delete](#delete-15)
      - [Query Scopes](#query-scopes-15)
      
        - [RetailBankingAccountFundTransferAll](#retailbankingaccountfundtransferall)
        - [RetailBankingAccountFundTransferExactMatch](#retailbankingaccountfundtransferexactmatch)
        - [RetailBankingAccountFundTransferCount](#retailbankingaccountfundtransfercount)
        - [RetailBankingAccountFundTransferCountExactMatch](#retailbankingaccountfundtransfercountexactmatch)
   
    
    - [RetailBankingAccountTransaction](#retailbankingaccounttransaction)
      - [Create](#create-16)
      - [Update](#update-16)
      - [Read](#read-16)
      - [Delete](#delete-16)
      - [Query Scopes](#query-scopes-16)
      
        - [RetailBankingAccountTransactionAll](#retailbankingaccounttransactionall)
        - [RetailBankingAccountTransactionExactMatch](#retailbankingaccounttransactionexactmatch)
        - [RetailBankingAccountTransactionCount](#retailbankingaccounttransactioncount)
        - [RetailBankingAccountTransactionCountExactMatch](#retailbankingaccounttransactioncountexactmatch)
   
    
    - [RetailBankingForeignCurrency](#retailbankingforeigncurrency)
      - [Create](#create-17)
      - [Update](#update-17)
      - [Read](#read-17)
      - [Delete](#delete-17)
      - [Query Scopes](#query-scopes-17)
      
        - [RetailBankingForeignCurrencyAll](#retailbankingforeigncurrencyall)
        - [RetailBankingForeignCurrencyExactMatch](#retailbankingforeigncurrencyexactmatch)
        - [RetailBankingForeignCurrencyCount](#retailbankingforeigncurrencycount)
        - [RetailBankingForeignCurrencyCountExactMatch](#retailbankingforeigncurrencycountexactmatch)
        - [RetailBankingForeignCurrencyForeignCurrency](#retailbankingforeigncurrencyforeigncurrency)
   
    
    - [RetailBankingLocation](#retailbankinglocation)
      - [Create](#create-18)
      - [Update](#update-18)
      - [Read](#read-18)
      - [Delete](#delete-18)
      - [Query Scopes](#query-scopes-18)
      
        - [RetailBankingLocationAll](#retailbankinglocationall)
        - [RetailBankingLocationExactMatch](#retailbankinglocationexactmatch)
        - [RetailBankingLocationCount](#retailbankinglocationcount)
        - [RetailBankingLocationCountExactMatch](#retailbankinglocationcountexactmatch)
        - [RetailBankingLocationLocations](#retailbankinglocationlocations)
   
    
    - [RetailBankingLogin](#retailbankinglogin)
      - [Create](#create-19)
      - [Update](#update-19)
      - [Read](#read-19)
      - [Delete](#delete-19)
      - [Query Scopes](#query-scopes-19)
      
        - [RetailBankingLoginAll](#retailbankingloginall)
        - [RetailBankingLoginExactMatch](#retailbankingloginexactmatch)
        - [RetailBankingLoginCount](#retailbankinglogincount)
        - [RetailBankingLoginCountExactMatch](#retailbankinglogincountexactmatch)
   
    
    - [RetailBankingPayee](#retailbankingpayee)
      - [Create](#create-20)
      - [Update](#update-20)
      - [Read](#read-20)
      - [Delete](#delete-20)
      - [Query Scopes](#query-scopes-20)
      
        - [RetailBankingPayeeAll](#retailbankingpayeeall)
        - [RetailBankingPayeeExactMatch](#retailbankingpayeeexactmatch)
        - [RetailBankingPayeeCount](#retailbankingpayeecount)
        - [RetailBankingPayeeCountExactMatch](#retailbankingpayeecountexactmatch)
   
    
    - [RetailBankingPayeeType](#retailbankingpayeetype)
      - [Create](#create-21)
      - [Update](#update-21)
      - [Read](#read-21)
      - [Delete](#delete-21)
      - [Query Scopes](#query-scopes-21)
      
        - [RetailBankingPayeeTypeAll](#retailbankingpayeetypeall)
        - [RetailBankingPayeeTypeExactMatch](#retailbankingpayeetypeexactmatch)
        - [RetailBankingPayeeTypeCount](#retailbankingpayeetypecount)
        - [RetailBankingPayeeTypeCountExactMatch](#retailbankingpayeetypecountexactmatch)
   
    
    - [RetailBankingRewardsCatalog](#retailbankingrewardscatalog)
      - [Create](#create-22)
      - [Update](#update-22)
      - [Read](#read-22)
      - [Delete](#delete-22)
      - [Query Scopes](#query-scopes-22)
      
        - [RetailBankingRewardsCatalogAll](#retailbankingrewardscatalogall)
        - [RetailBankingRewardsCatalogExactMatch](#retailbankingrewardscatalogexactmatch)
        - [RetailBankingRewardsCatalogCount](#retailbankingrewardscatalogcount)
        - [RetailBankingRewardsCatalogCountExactMatch](#retailbankingrewardscatalogcountexactmatch)
        - [RetailBankingRewardsCatalogRewardsCatalog](#retailbankingrewardscatalogrewardscatalog)
   
    
    - [RetailBankingRewardsRedemption](#retailbankingrewardsredemption)
      - [Create](#create-23)
      - [Update](#update-23)
      - [Read](#read-23)
      - [Delete](#delete-23)
      - [Query Scopes](#query-scopes-23)
      
        - [RetailBankingRewardsRedemptionAll](#retailbankingrewardsredemptionall)
        - [RetailBankingRewardsRedemptionExactMatch](#retailbankingrewardsredemptionexactmatch)
        - [RetailBankingRewardsRedemptionCount](#retailbankingrewardsredemptioncount)
        - [RetailBankingRewardsRedemptionCountExactMatch](#retailbankingrewardsredemptioncountexactmatch)
   


##Adding SDK to Application

The SDK contains a number of source files.  The SDK can be added to your project by:

1. Adding the APResource.bundle to the project.
2. Adding APSDK.framework to the Build Phases > Link Binaries with Library.
3. Adding "-ObjC -licucore" to Building Settings > Other Linker Flags.

You should then be able to import the appropriate headers into your classes.

```
Ex. #import <APSDK/AuthManager.h>
```

##Setup

Some basic setup is required in order to utilize the SDK effectively in your application.  If using the AnyPresence backend, a base url is required to be set.

```
NSURL url = [NSURL urlWithString:"www.example.com:3000"];
[AnyPresenceAPI setBaseURL:url];
```

If certificate pinning is necessary, the following setup will enable the feature.

```
NSString *certificatePath = [[NSBundle mainBundle] pathForResource:@"myCertificate" ofType:@"cer"];
[AnyPresenceAPI setSSLCertificate:certificatePath];
```

Alternatively, the base url and certificate can be set in the same call in the following manner:

```
NSURL *url = [NSURL URLWithString:@"https://www.example.com:3000/api/v1/"];
NSString *certificatePath = [[NSBundle mainBundle] pathForResource:@"myCertificate" ofType:@"cer"];
[AnyPresenceAPI setBaseURL:url withSSLCertificatePath:certificatePath];
```

Authentication can be set in the following manner:

```
AuthManager * auth = [AuthManager new];
auth.signInURL = [NSURL URLWithString:@"https://www.example.com:3000/auth/password/callback"];
auth.signOutURL = [NSURL URLWithString:@"https://www.example.com:3000/auth/signout"];
auth.persistsCurrentCredentials = NO;
[AuthManager setDefaultManager:auth];
```

##CRUD

The SDK supports asynchronous CRUD method calls.  Synchronous calls have been deprecated in this version of the SDK.  The following serve as examples of basic CRUD method calls.

###Create
```
Foo *foo = [Foo new];
foo.someField = @"";

[Foo createAsync:^(id object, NSError *error) {
    if (!error) {
        // Process response.
    }
}];
```

###Read
```
Foo *foo = [Foo new];
foo.id = @"123";

[foo refreshAsync:^(id object, NSError *error) {
    if (!error) {
        // Process response.
    }
}];
```

###Read - Query Scopes
```
NSDictionary *params = @{@"foo0" : @"bar0",
                         @"foo1" : @"bar1" };

[Car query:@"all" params:params async:^(NSArray *objects, NSError *error) {
    if (!error) {
        for (id obj in objects) {
            // Process response.
        }
    }
}];
```

###Update
```
foo.someField = @"update";
    
[foo updateAsync:^(id object, NSError *error) {
    if (!error) {
        // Process response.
    }
}];
```

###Delete
```
[foo destroyAsync:^(id object, NSError *error) {
    if (!error) {
        // Process response.
    }
}];
```

##Local Cache

The SDK supports both remote queries and local caching which enable you to access data with network access.  Local caching is dependant on remote queries and thus require that one is made before local caching is updated and accessible.  Take the following remote query example:

```
NSDictionary *params = @{ @"foo" : @"bar" };

[Car query:@"all" params:params async:^(NSArray *objects, NSError *error) {
    // Do something with objects.
}];
```

Upon completion of the query call, the response is saved locally for future access.  The following is an example on how to access the local cache.

```
NSDictionary *params = @{ @"foo" : @"bar" };
NSArray *arr = [Foo queryLocal:@"all" params:params];

for (id obj in arr) {
    // Do something with objects.
}
```

##Context Usage

Some query methods take an optional context parameter.  A context should be used when string interpolation is required (```i.e. http://server.com/save/{{some_value}}/here```, where ```{{some_value}}``` is the string that requires interpolation).  A context will be used to replace uninterpreted strings with the values of their corresponding object value.  They should be represented by either an instance of an object that is KVC complaint, containing the values with which to replaced the uninterpolated string or by a NSDictionary of 'string' to 'object instance' mappings (```@{ @"obj" : instanceOfObject }``` where ```instanceOfObject``` is an instance of a KVC complaint object).  See examples:

```
Uninterpreted URL Request String: "http://server.com/save/{{map.longitude}}/here"
Object: Map *myMap = self.map; (self.map is assumed to have properties set prior to interpolation)
Context: NSDictionary *context = @{ @"map" : myMap };

Context Note:
@"map" = Represents the prefix in the uninterpreted string (i.e. map in {{map.longitude}})
myMap = Object used to interpolate all strings prefixed with "map."
```

```
NSDictionary *params = @{ @"foo" : @"bar" };
    
Foo *foo = [Car new];
foo.id = @"123";
foo.color = @"John";

NSDictionary *context = @{ @"foo" : foo };

[Foo query:@"all" params:params context:context async:^(NSArray *objects, NSError *error) {
    if (!error) {
        // Do something with the response.
    }
}];
```
 
If uninterpolated string does not contain a prefix (i.e. ```{{longitude}}```) a single object instance is allowed to be passed as a context.

```
Uninterpreted URL Request String: "http://server.com/save/{{map.longitude}}/here"
Object: Map *myMap = self.map; (self.map is assumed to have values set prior to interpolation)
Context: id *context = myMap;

Context Note:
myMap = Object used to interpolate all strings prefixed with "map."
```

```
Foo *foo = [Foo new];
foo.id = @"123";
foo.color = @"John";

[Car query:@"all" params:params context:foo async:^(NSArray *objects, NSError *error) {
    if (!error) {
        // Do something with the response.
    }
}];
```

If more than one object is required for interpolation (i.e. ```http://server.com/save/{{map.latitude}}/in/{{folder.name}}```), a NSDictionary of 'string' to 'object instance' mappings is required.

```
Uninterpreted URL Request String: "http://server.com/save/{{map.latitude}}/in/{{folder.name}}"
Object 1: Map *myMap = self.map; (self.map is assumed to have values set prior to interpolation)
Object 2: Folder *someFolder = self.folder; (self.folder is assumed to have values set prior to interpolation)
Context: NSDictionary *context = @{ @"map" : myMap, @"folder" : someFolder };

Context Note:
@"map" = Represents the prefix in the uninterpreted string (i.e. map in {{map.longitude}}).
@"folder" = Represents the prefix in the uninterpolated string (i.e. folder in {{folder.name}}.
myMap = Object used to interpolate all strings prefixed with "map."
someFolder = Object used to interpolate all strings prefixed with "folder."
```

```
NSDictionary *params = @{ @"foo" : @"bar" };
    
Foo *foo1 = [Foo new];
foo1.id = @"123";
foo1.name = @"John";

Foo *foo2 = [Foo new];
foo2.id = @"456";
foo2.age = @"21";

NSDictionary *context = @{ @"foo1" : bar1,
                           @"foo2" : bar2 };

[Foo query:@"all" params:params context:context async:^(NSArray *objects, NSError *error) {
    if (!error) {
        // Do something with the response.
    }
}];
```

A context is optional and only required if interpolation is necessary of any previously defined variables at SDK creation.  Set context to nil if no interpolation is required.  Passing nil for context or providing a non-KVC compliant context object (i.e. NSArray) when interpolation is required will produce a string that is partially or entirely uninterpolated causing the given request to fail.
*/

##Push Notification

The SDK support push notification, including device registration and channel subscriptions.  The following as examples illustration how to accomplish each.

###Register Device
```
[APPushNotification registerDevice:@"1234567890123456789012345678901234567890"
                          callback:^(NSString *response, NSError *error) {
                              if (!error) {
                                  NSLog(@"RESPONSE: %@", response);
                              }
}];
```

###Unregister Device
```
[APPushNotification unregisterDevice:@"1234567890123456789012345678901234567890"
                            callback:^(NSString *response, NSError *error) {
                                if (!error) {
                                    NSLog(@"RESPONSE: %@", response);
                                }
}];
```

###Subscribe to Channel
```
[APPushNotification subscribeToChannel:@"MyChannel"
                              deviceId:@"1234567890123456789012345678901234567890"
                              callback:^(NSString *response, NSError *error) {
                                  if (!error) {
                                      NSLog(@"RESPONSE: %@", response);
                                  }
}];
```

###Unsubscribe from Channel
```
[APPushNotification unsubscribeFromChannel:@"MyChannel"
                                  deviceId:@"1234567890123456789012345678901234567890"
                                  callback:^(NSString *response, NSError *error) {
                                      if (!error) {
                                          NSLog(@"RESPONSE: %@", response);
                                      }
}];
```

###Send Message to Channel
```
APPushNotificationData *data = [[APPushNotificationData alloc] init];
data.alert = @"Foobar";
data.sound = @"ding";
data.badge = @"1";
data.expiry = 1000;

[APPushNotification sendMessage:@"FOOBAR"
                    channelName:@"MyChannel"
                        iOSData:data
                    androidData:nil
                       callback:^(NSString *response, NSError *error) {
                           if (!error) {
                               NSLog(@"RESPONSE: %@", response);
                           }
}];
```