//
//  FreeBirdViewController.m
//  FreeBird
//
//  Created by Joseph Feliciano on 11-09-19.
//  Copyright 2011 University of Victoria. All rights reserved.
//

#import "FreeBirdViewController.h"
#import "Bird.h"
#import "Card.h"

@implementation FreeBirdViewController

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    /*All temporary code until released down there
     *Order: initialize bird -> initialize card using bird object descriptions -> position card ->add card to view -> release -> release -> release
     *This will get more complex when we get plists up. This was strictly to check if the bird model works*/
    
    Bird *altamiraOrioleSetA = [[Bird alloc] initWithSpecies:AltamiraOriole andSet:setA];
    NSLog(@"%@", altamiraOrioleSetA);
    Bird *altamiraOrioleSetB = [[Bird alloc] initWithSpecies:AltamiraOriole andSet:setB];
    Bird *baltimoreOrioleSetA = [[Bird alloc] initWithSpecies:BaltimoreOriole andSet:setA];
    
    Card *aCard = [[Card alloc] initWithImagePath:altamiraOrioleSetA.imagePath withSpecies:[altamiraOrioleSetA speciesAsString] withFamily:altamiraOrioleSetA.family];
    aCard.center = CGPointMake(512, 384);
    [self.view addSubview:aCard];
    [aCard release];
    
    Card *aCardB = [[Card alloc] initWithImagePath:altamiraOrioleSetB.imagePath withSpecies:[altamiraOrioleSetB speciesAsString] withFamily:altamiraOrioleSetB.family];
    aCardB.center = CGPointMake(200, 384);
    [self.view addSubview:aCardB];
    [aCardB release];
    
    Card *anotherCard = [[Card alloc] initWithImagePath:baltimoreOrioleSetA.imagePath withSpecies:[baltimoreOrioleSetA speciesAsString] withFamily:baltimoreOrioleSetA.family];
    anotherCard.center = CGPointMake(700, 384);
    [self.view addSubview:anotherCard];
    [anotherCard release];
    
    [altamiraOrioleSetA release];
    [altamiraOrioleSetB release];
    [baltimoreOrioleSetA release];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

-(void)dealloc {
    [super dealloc];
}

@end
