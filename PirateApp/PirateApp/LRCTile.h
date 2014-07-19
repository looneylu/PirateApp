//
//  LRCTile.h
//  PirateApp
//
//  Created by Luis Carbuccia on 7/19/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LRCWeapon.h"
#import "LRCArmor.h"

@interface LRCTile : NSObject

@property (nonatomic, strong) NSString *story;
@property (nonatomic, strong) UIImage *backgroundImage;
@property (nonatomic, strong) NSString *actionButtonName;
@property (nonatomic, strong) LRCWeapon *weapon;
@property (nonatomic, strong) LRCArmor *armor;
@property (nonatomic) int healthEffect;

@end
