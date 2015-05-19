//
//  Dragon.h
//  DragonFashion
//
//  Created by Maxi Casal on 10/7/14.
//  Copyright (c) 2014 Maxi Casal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property (readonly) NSString *name;
@property NSString *signatureClothingItem;

- (instancetype) initWithName: (NSString*) name;
@end
