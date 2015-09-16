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

## Project Structure
(Use the following subset of calls, refer to the full docs for implementation)

### Retail Banking
    - [RetailBankingLogin]
      - [Create] (POST /retailbanking/v1/login)

    - [RetailBankingAccount]
      - [Query Scopes][RetailBankingAccountAll] (GET /retailbanking/v1/accounts)
      - [Read] (GET /retailbanking/v1/accounts/{account_id})

    - [RetailBankingAccountBalance]
      - [Query Scopes][RetailBankingAccountBalanceAll] (GET /retailbanking/v1/accounts/{account_id}/balances)

    - [RetailBankingAccountTransaction]
      - [Query Scopes][RetailBankingAccountTransactionAll] (GET /retailbanking/v1/accounts/{account_id}/transactions)

    - [RetailBankingPayeeType]
      - [Query Scopes][RetailBankingPayeeTypeAll] (GET /retailbanking/v1/payee_types)

    - [RetailBankingPayee]
      - [Query Scopes][RetailBankingPayeeAll] (GET /retailbanking/v1/payees)

    - [RetailBankingAccountFundTransfer]
      - [Create] (POST /retailbanking/v1/accounts/{account_id}/fund_transfers)

    - [RetailBankingForeignCurrency]
      - [Query Scopes][RetailBankingForeignCurrencyForeignCurrency] (GET /retailbanking/v1/foreign_currency)

    - [RetailBankingRewardsCatalog]
      - [Query Scopes][RetailBankingRewardsCatalogRewardsCatalog] (GET /retailbanking/v1/rewards/catalog)

    - [RetailBankingRewardsRedemption]
      - [Create] (POST /retailbanking/v1/rewards/redemption)

    - [RetailBankingLocation]
      - [Query Scopes][RetailBankingLocationLocations] (GET /retailbanking/v1/locations)

### Corporate Payments
    - [CorporatePaymentsLogin]
      - [Create] (POST /corporatepayments/v1/login)

    - [CorporatePaymentsAccount]
      - [Create] (POST /corporatepayments/v1/accounts)
      - [Query Scopes][CorporatePaymentsAccountAll] (GET /corporatepayments/v1/accounts)
      - [Update] (PUT /corporatepayments/v1/accounts/{account_id})
      - [Read] (GET /corporatepayments/v1/accounts/{account_id})

    - [CorporatePaymentsPayment]
      - [Create] (POST /corporatepayments/v1/payments)
      - [Query Scopes][CorporatePaymentsPaymentAll] (GET /corporatepayments/v1/payments)
      - [Read] (GET /corporatepayments/v1/payments/{payment_id})

    - [CorporatePaymentsBeneficiary]
      - [Create] (POST /corporatepayments/v1/beneficiaries)
      - [Update] (PUT /corporatepayments/v1/beneficiaries/{beneficiary_id})
      - [Read] (GET /corporatepayments/v1/beneficiaries/{beneficiary_id})

    - [CorporatePaymentsCrossBorderFxQuote]
      - [Create] (POST /corporatepayments/v1/crossborder/fx_quotes)

    - [CorporatePaymentsCrossBorderFxBooking]
      - [Create] (POST /corporatepayments/v1/crossborder/fx_bookings)

    - [CorporatePaymentsCrossBorderFxPayment]
      - [Create] (POST /corporatepayments/v1/crossborder/fx_payments)
      - [Query Scopes][CorporatePaymentsCrossBorderFxPaymentFxPayments] (GET /corporatepayments/v1/crossborder/fx_payments)
      - [Read] (GET /corporatepayments/v1/crossborder/fx_payments/{citi_ref})

### Capital Markets Trading
    - [CapitalMarketsLogin]
      - [Create] (POST /capitalmarkets/v1/login)

    - [CapitalMarketsOrder]
      - [Create] (POST /capitalmarkets/v1/orders)
      - [Read] (GET /capitalmarkets/v1/orders/{order_id})
      - [Delete] (DELETE /capitalmarkets/v1/orders/{order_id})

### Revenue Analytics and Client Relationship Management
    - [CapitalMarketsLogin]
      - [Create] (POST /capitalmarkets/v1/login)

    - [CapitalMarketsRevenue]
      - [Query Scopes][CapitalMarketsRevenueRevenues] (GET /capitalmarkets/v1/revenues)

    - [CapitalMarketsActivity]
      - [Query Scopes][CapitalMarketsActivityActivities] (GET /capitalmarkets/v1/activities)

    - [CapitalMarketsContact]
      - [Query Scopes][CapitalMarketsContactContacts] (GET /capitalmarkets/v1/contacts)

    - [CapitalMarketsContentService]
      - [Query Scopes][CapitalMarketsContentServiceContentServices](GET /capitalmarkets/v1/content_services)





















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
An auth token must be set and will be used in future calls
```
NSDictionary *clientContext = @{@"clientID":[self.clientIdTextField.text copy]};
LoginInfo *loginInfo = [[LoginInfo alloc] init];
loginInfo.username = [self.usernameTextField.text copy];
loginInfo.password = [self.passwordTextField.text copy];
LoginViewController * __weak weakSelf = self;
[loginInfo createAsyncWithContext:clientContext async:^(id object, NSError *error) {
    if ([object token]) {
        [object setToken:[@"Bearer " stringByAppendingString:[object token]]];
        NSMutableDictionary *loginContext = [NSMutableDictionary dictionary];
        [loginContext addEntriesFromDictionary:clientContext];
        [loginContext addEntriesFromDictionary:@{@"loginInfo":object}];
        [[ContextManager sharedManager] setLoginContext:loginContext];
        [weakSelf performSegueWithIdentifier:@"TabBarControllerSegueID" sender:self];
    }
    else {
        weakSelf.loginButton.hidden = NO;
        [weakSelf.activityIndicatorView stopAnimating];
        [[[UIAlertView alloc] initWithTitle:@"Login Error" message:error.description delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
    }
}];
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
