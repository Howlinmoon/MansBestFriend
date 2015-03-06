//
//  ViewController.m
//  Man's Best Friend
//
//  Created by jim Veneskey on 1/12/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "ViewController.h"
#import "MBFDog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Lassie";
    myDog.breed = @"Collie";
    myDog.age = 5;
    //NSLog(@"My dog is named %@ and it's age is %i, its' breed is %@", myDog.name, myDog.age, myDog.breed);
    //myDog = nil;
    //NSLog(@"My dog is named %@ and it's age is %i, its' breed is %@", myDog.name, myDog.age, myDog.breed);

    //[myDog bark];
    [myDog barkANumberOfTimes:myDog.age];
    
    [myDog changeBreedToWerewolf];
    
    NSLog(@"My dog is named %@ and it's age is %i, its' breed is %@", myDog.name, myDog.age, myDog.breed);
    
    
    [self printHelloWorld];
    
    [myDog barkANumberOfTimes:3 loudly:true];

    [myDog barkANumberOfTimes:2 loudly:false];
    
    int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
    
    NSLog(@"Age in dog years is %i", dogYears);
    
    [myDog problem1:5];
    
    [myDog problem2:6 value2:2];
    
    NSLog(@"10 factorial is %i", [myDog problem3:10]);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printHelloWorld {
    NSLog(@"Hello World");
}



@end
