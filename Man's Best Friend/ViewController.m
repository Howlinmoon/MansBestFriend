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
    NSLog(@"My dog is named %@ and it's age is %i, its' breed is %@", myDog.name, myDog.age, myDog.breed);
    myDog = nil;
    NSLog(@"My dog is named %@ and it's age is %i, its' breed is %@", myDog.name, myDog.age, myDog.breed);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
