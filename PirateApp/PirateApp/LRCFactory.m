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
    LRCWeapon *bluntedSword = [[LRCWeapon alloc] init];
    bluntedSword.weaponName = @"Blunted Sword";
    bluntedSword.weaponDamageValue = 3;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword!";
    
    LRCTile *tile2 = [[LRCTile alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    LRCArmor *steelArmor = [[LRCArmor alloc] init];
    steelArmor.armorName = @"Steel Armor";
    steelArmor.healthValue = 110;
    tile2.armor = steelArmor;
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    tile2.actionButtonName = @"Take armor";
    
    LRCTile *tile3 = [[LRCTile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [ UIImage imageNamed: @"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at dock";
    
    NSArray *firstColumn = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    LRCTile *tile4 = [[LRCTile alloc] init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are great defenders and fiercely loyal to their captain";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    LRCArmor *parrotArmor = [[LRCArmor alloc] init];
    parrotArmor.armorName = @"Parrot";
    parrotArmor.healthValue = 20;
    tile4.armor = parrotArmor;
    tile4.actionButtonName = @"Adopt Parrot";
    
    LRCTile *tile5 = [[LRCTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    LRCWeapon *pistolWeapon = [[LRCWeapon alloc] init];
    pistolWeapon.weaponDamageValue = 8;
    pistolWeapon.weaponName = @"Pistol";
    tile5.weapon = pistolWeapon;
    tile5.actionButtonName = @"TakePistol";
    
    LRCTile *tile6 = [[LRCTile alloc] init];
    tile6.story = @"You have been captured by pirated, and they're ordering you to walk the plank";
    tile6.healthEffect = -17;
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.actionButtonName = @"Show no fear";
    
    NSArray *secondColumn = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    
    LRCTile *tile7 = [[LRCTile alloc] init];
    tile7.story = @"You've sighted a pirate battle off the coast. Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 10;
    tile7.actionButtonName = @"Fight those scum";
    
    LRCTile *tile8 = [[LRCTile alloc] init];
    tile8.story = @"The legend of the deep, the mighty kraken appears!!!";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -20;
    tile8.actionButtonName = @"Abandon ship";
    
    LRCTile *tile9 = [[LRCTile alloc] init];
    tile9.story = @"You've discovered a cave with pirate treasure";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 18;
    tile9.actionButtonName = @"Take treasure";
    
    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    
    LRCTile *tile10 = [[LRCTile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship";
    tile10.healthEffect = -5;
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.actionButtonName = @"Repel the invaders";
    
    LRCTile *tile11 = [[LRCTile alloc] init];
    tile11.story = @"In the deep of the sea, many things live, and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -8;
    tile11.actionButtonName = @"Swim Deeper";
    
    LRCTile *tile12 = [[LRCTile alloc] init];
    tile12.story = @"Your final face off with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -10;
    tile12.actionButtonName = @"Fight";
    
    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    
    // collect all the column arrays into one array
    NSArray *tileArray = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tileArray;
    
}

- (LRCCharacter *)createCharacter
{
    // method returns a pirate a pirate character with some initial values
    LRCCharacter *pirate = [[LRCCharacter alloc] init];
    LRCWeapon *weapon = [[LRCWeapon alloc] init];
    LRCArmor *armor = [[LRCArmor alloc] init];

    pirate.characterHealth = 100;
    
    armor.armorName = @"Cloak";
    armor.healthValue = 0;
    pirate.armor = armor;
    
    weapon.weaponName = @"Fists";
    weapon.weaponDamageValue = 1;
    pirate.weapon = weapon;
    
    return pirate;
    
}

- (LRCBoss *)createBoss
{
    // returns an instance of LRCBoss
    LRCBoss *boss = [[LRCBoss alloc] init];
    boss.health = 60;
    return boss;
}

@end
