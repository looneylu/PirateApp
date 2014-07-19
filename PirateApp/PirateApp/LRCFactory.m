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
    tile1.story = @"story 1";
    LRCTile *tile2 = [[LRCTile alloc] init];
    tile2.story = @"story 2";
    LRCTile *tile3 = [[LRCTile alloc] init];
    tile3.story = @"story 3";
    NSArray *firstColumn = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    LRCTile *tile4 = [[LRCTile alloc] init];
    tile4.story = @"story 4";
    LRCTile *tile5 = [[LRCTile alloc] init];
    tile5.story = @"story 5";
    LRCTile *tile6 = [[LRCTile alloc] init];
    tile6.story = @"story 6";
    NSArray *secondColumn = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    
    LRCTile *tile7 = [[LRCTile alloc] init];
    tile7.story = @"story 7";
    LRCTile *tile8 = [[LRCTile alloc] init];
    tile8.story = @"story 9";
    LRCTile *tile9 = [[LRCTile alloc] init];
    tile9.story = @"story 9";
    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    
    LRCTile *tile10 = [[LRCTile alloc] init];
    tile10.story = @"story 10";
    LRCTile *tile11 = [[LRCTile alloc] init];
    tile11.story = @"story 11";
    LRCTile *tile12 = [[LRCTile alloc] init];
    tile12.story = @"story 12";
    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    
    // collect all the column arrays into one array
    NSArray *tileArray = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tileArray;
    
}

@end
