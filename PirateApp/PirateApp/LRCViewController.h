//
//  LRCViewController.h
//  PirateApp
//
//  Created by Luis Carbuccia on 7/19/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LRCCharacter.h"
#import "LRCBoss.h"

@interface LRCViewController : UIViewController

@property (nonatomic) CGPoint currentPoint;
@property (nonatomic, strong) NSArray *tiles;
@property (nonatomic, strong) LRCCharacter *pirateCharacter;
@property (nonatomic, strong) LRCBoss *boss;

- (void) startGame; 
@end
