//
//  APTestClasses.m
//  AnyPresence SDK
//

#import "APTestClasses.h"
#import <objc/objc-runtime.h>

@implementation XMotherShip

- (id)data {
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    unsigned count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    
    for (int i = 0; i < count; i++) {
        NSString *key = [NSString stringWithUTF8String:property_getName(properties[i])];
        NSString *value = [self valueForKey:key];
        
        if (value) {
            [dict setObject:value forKey:key];
        }
    }
    
    free(properties);
    
    return dict;
}

@end

@implementation XAddress

@end

@implementation XProduct

@end

@implementation XStore

@end

@implementation XObject

@end
