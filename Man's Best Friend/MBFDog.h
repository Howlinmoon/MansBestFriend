//
//  MBFDog.h
//  Man's Best Friend
//
//  Created by jim Veneskey on 1/13/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;

-(void) bark;

-(void)barkANumberOfTimes:(int)numberOfTimes;

-(void)changeBreedToWerewolf;

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;

-(int)ageInDogYearsFromAge:(int)regularAge;


@end
