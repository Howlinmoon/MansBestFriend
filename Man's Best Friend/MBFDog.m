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


@end
