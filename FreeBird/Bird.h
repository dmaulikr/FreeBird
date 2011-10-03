//
//  Bird.h
//  FreeBird
//
//  Created by Noel Feliciano on 11-09-26.
//  Copyright 2011 University of Victoria. All rights reserved.
//

#import <Foundation/Foundation.h>

//Will need to list ALL the species. Is there a better way?
//Idea: plist, with a string property for family type returned, will seek dictionary objectForKey:species
//Consider after card display
typedef enum {
    AltamiraOriole,
    AudubonsOriole,
    BaltimoreOriole,
    BlueJay,
    GrayJay
} Species;

//This figures out which of the four sets this bird is
typedef enum {
    setA,
    setB,
    setC,
    setD
} Set;


@interface Bird : NSObject {
    NSDictionary *mainDictionary;
    NSString *family;
    NSString *speciesString;
    NSString *imagePath;
    Set set;
    Species species;
}

@property (nonatomic, assign) NSDictionary *mainDictionary;
@property (nonatomic, assign) NSString *family;
@property (nonatomic, assign) NSString *speciesString;
@property (nonatomic, assign) NSString *imagePath;
@property (nonatomic, assign) Set set;
@property (nonatomic, assign) Species species;

-(id) initWithSpecies:(Species)species andSet:(Set)set;
-(NSString *) familyAsString;
-(NSString *) speciesAsString;
-(NSString *) theImagePath;

@end
