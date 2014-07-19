//
//  LRCCharacter.h
//  PirateApp
//
//  Created by Luis Carbuccia on 7/19/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LRCWeapon.h"
#import "LRCArmor.h"


@interface LRCCharacter : NSObject

@property (nonatomic, strong) LRCArmor *armor;
@property (nonatomic, strong) LRCWeapon *weapon; 


@end
