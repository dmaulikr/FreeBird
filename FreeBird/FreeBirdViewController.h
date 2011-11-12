//
//  FreeBirdViewController.h
//  FreeBird
//
//  Created by Joseph Feliciano on 11-09-19.
//  Copyright 2011 University of Victoria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"
#import "Card.h"
#import "Column.h"

@interface FreeBirdViewController : UIViewController {
    Card *aCard;
    Card *cardToMove;
    NSMutableArray *columns;
    NSMutableArray *cards;
    UIImageView *deckNumberOne;
    UIImageView *deckNumberTwo;
    UIImageView *deckNumberThree;
}

@property (nonatomic, retain) NSMutableArray *columns;
@property (nonatomic, retain) NSMutableArray *cards;
@property (nonatomic, retain) Card *cardToMove; 
@property (nonatomic, retain) UIImageView *deckNumberOne; 
@property (nonatomic, retain) UIImageView *deckNumberTwo; 
@property (nonatomic, retain) UIImageView *deckNumberThree; 

-(void)addRowOfCards;
-(void)setUpGameBoard;
-(BOOL)compareSpeciesOfCardA:(Card *)aCardA andCardB:(Card *)aCardB;
-(BOOL)compareFamiliesOfCardA:(Card *)aCardA andCardB:(Card *)aCardB;
-(int)checkAbove:(int )clmn;

@end
