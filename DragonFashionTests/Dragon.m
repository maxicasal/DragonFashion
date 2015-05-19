//
//  Dragon.m
//  DragonFashion
//
//  Created by Maxi Casal on 10/7/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import "Dragon.h"
@interface Dragon()
@property (readwrite) NSString *name;
@end

@implementation Dragon

-(instancetype) init{
    abort();  //Don't use this
    return nil;
}

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (name.length == 0) {
        [NSException raise: NSInvalidArgumentException format:@"Dragon's name must have a value"];
    }
    self.name = name;
    return self;
}

-(void) setSignatureClothingItem:(NSString *)signatureClothingItem{

}

@end
