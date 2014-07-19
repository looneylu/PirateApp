//
//  LRCFactory.h
//  PirateApp
//
//  Created by Luis Carbuccia on 7/19/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LRCCharacter.h"

@interface LRCFactory : NSObject

- (NSArray *) tiles;
- (LRCCharacter *)createCharacter;


@end
