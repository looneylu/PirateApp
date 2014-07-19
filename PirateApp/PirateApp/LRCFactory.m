//
//  LRCFactory.m
//  PirateApp
//
//  Created by Luis Carbuccia on 7/19/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "LRCFactory.h"
#import "LRCTile.h"

@implementation LRCFactory

- (NSArray *) tiles
{
    
    // make 4 column arrays. Each will contain 3 tiles.
    LRCTile *tile1 = [[LRCTile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage to the new world! You must stop the evil pirate boss. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    LRCTile *tile2 = [[LRCTile alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    LRCTile *tile3 = [[LRCTile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [ UIImage imageNamed: @"PirateFriendlyDock.jpg"];
    NSArray *firstColumn = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    LRCTile *tile4 = [[LRCTile alloc] init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are great defenders and fiercely loyal to their captain";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    LRCTile *tile5 = [[LRCTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    LRCTile *tile6 = [[LRCTile alloc] init];
    tile6.story = @"You have been captured by pirated, and they're ordering you to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    NSArray *secondColumn = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    
    LRCTile *tile7 = [[LRCTile alloc] init];
    tile7.story = @"You've sighted a pirate battle off the coast. Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    LRCTile *tile8 = [[LRCTile alloc] init];
    tile8.story = @"The legend of the deep, the mighty kraken appears!!!";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    LRCTile *tile9 = [[LRCTile alloc] init];
    tile9.story = @"You've discovered a cave with pirate treasure";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    
    LRCTile *tile10 = [[LRCTile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    LRCTile *tile11 = [[LRCTile alloc] init];
    tile11.story = @"In the deep of the sea, many things live, and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    LRCTile *tile12 = [[LRCTile alloc] init];
    tile12.story = @"Your final face off with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    
    // collect all the column arrays into one array
    NSArray *tileArray = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tileArray;
    
}

- (void)createCharacter
{
    LRCCharacter *pirate = [[LRCCharacter alloc] init];
    pirate.weapon.weaponName = @"fists";
    pirate.weapon.weaponDamageValue = 1;
    pirate.armor.healthValue = 20;
    pirate.armor.armorName = @"none";
    
    self.pirateCharacter = pirate;
    
}

@end
