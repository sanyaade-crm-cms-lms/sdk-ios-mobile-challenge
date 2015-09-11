//
//  APTestClasses.h
//  AnyPresence SDK
//

#import <Foundation/Foundation.h>

@interface XMotherShip : NSObject

- (id)data;

@end

@interface XAddress : XMotherShip

@property (nonatomic, strong) NSString *street;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSNumber *zip;

@end

@interface XProduct : XMotherShip

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *brand;
@property (nonatomic, strong) NSNumber *quantity;
@property (nonatomic, strong) NSString *sweetness;
@property (nonatomic, strong) NSString *color;

@end

@interface XStore : XMotherShip

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *managerName;
@property (nonatomic, strong) XAddress *address;

@end

@interface XObject : XMotherShip

@property (nonatomic, strong) NSString *color;
@property (nonatomic, strong) NSString *sweetness;
@property (nonatomic, strong) NSNumber *thickness;

@end
