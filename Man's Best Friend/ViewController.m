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

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Woofie";
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
    
    // change back to St. Bernard to match the picture
    
    myDog.breed = @"St. Bernard";
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russel Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];

    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];

    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    NSLog(@"%@", self.myDogs);

    
    
    
/*
 challenge stuff - unrelated to project - too lazy to create another project
 
    [myDog problem1:5];
    
    [myDog problem2:6 value2:2];
    
    NSLog(@"10 factorial is %i", [myDog problem3:10]);
*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printHelloWorld {
    NSLog(@"Hello World");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    int numberOfDogs = [self.myDogs count];
    NSLog(@"There are %i dogs in our array", numberOfDogs);
    
    int randomIndex = arc4random() % numberOfDogs;
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    self.myImageView.image = randomDog.image;
    self.nameLabel.text = randomDog.name;
    self.breedLabel.text = randomDog.breed;
    sender.title = @"And Another";
    
}



@end
