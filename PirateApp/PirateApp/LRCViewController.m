//
//  LRCViewController.m
//  PirateApp
//
//  Created by Luis Carbuccia on 7/19/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "LRCViewController.h"
#import "LRCFactory.h"
#import "LRCTile.h"

@interface LRCViewController ()

#pragma properties

@property (strong, nonatomic) IBOutlet UILabel *healthValueLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageValueLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorNameLabel;

@property (strong, nonatomic) IBOutlet UITextView *storyText;

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UIImageView *storyBackgroundImageView;

@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

@end



@implementation LRCViewController

#pragma IBAction buttons

- (IBAction)actionButtonPressed:(id)sender
{

}

- (IBAction)northButtonPressed:(id)sender
{
    // if user presses north button, currentPoint y should increase by one
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    
    // check to enable/disable possible buttons
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(id)sender
{
    // currentPoint y should decrease by one
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    
    // check to enable/disable possible buttons
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(id)sender
{
    // current point x should increase by 1
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    
    // check to enable/disable possible buttons
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(id)sender
{
    // current point x should decrease by 1
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    
    // check to enable/disable possible buttons
    [self updateButtons];
    [self updateTile];
}


- (void) updateTile
{
    LRCTile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyText.text = tile.story;
    self.storyBackgroundImageView.image = tile.backgroundImage;
}


- (BOOL) tileExistsAtPoint:(CGPoint) point
{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count])
        return  YES;
    else
        return  NO;
}

- (void) updateButtons
{
    self.westButton.enabled = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.enabled = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.enabled = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.enabled = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    LRCFactory *factory = [[LRCFactory alloc] init];
    
    //create an array of tiles using LRCFactory class
    self.tiles = [factory tiles];
    
    // pirate game should start off at origin
    self.currentPoint = CGPointMake(0, 0);
    
    [self updateTile];
    [self updateButtons];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
