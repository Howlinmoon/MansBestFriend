//
//  MBFDog.m
//  Man's Best Friend
//
//  Created by jim Veneskey on 1/13/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void) bark {
    //self.name = @"New Name";
    NSLog(@"Woof! Woof!");
}

-(void)barkANumberOfTimes:(int)numberOfTimes {
    for (int bark = 1; bark <= numberOfTimes; bark++) {
        //NSLog(@"Woof! Woof!");
        [self bark];
    }
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud {
    NSString *sound = @"";
    if (! isLoud) {
        sound = @"yip yip!";
    } else {
        sound = @"WOOF! WOOF!";
    }

    for (int bark = 1; bark <= numberOfTimes; bark++) {
        NSLog(@"%@",sound);
    }
}


-(void)changeBreedToWerewolf {
    self.breed = @"WereWolf";
}


-(int)ageInDogYearsFromAge:(int)regularAge {
    int newAge = regularAge * 7;
    return newAge;
}

-(void)problem1:(int)parameter1 {
    for (int x = parameter1; x >= 1; x--) {
        NSLog(@"%i",x);
    }
}


-(void)problem2:(int)parameter1 value2:(int)parameter2 {
    for (int x = parameter1 ; x >= parameter2; x--) {
        NSLog(@"%i",x);
    }
}

-(int)problem3:(int)factorThis {
    int factored = 1;
    for (int x = factorThis; x >= 1; x--) {
        factored = factored * x;
    }
    
    return factored;
}




@end
