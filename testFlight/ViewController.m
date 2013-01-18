//
//  ViewController.m
//  testFlight
//
//  Created by Hashim MH on 16/01/13.
//  Copyright (c) 2013 Hashim MH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [TestFlight passCheckpoint:@"First View loaded"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    
    static int count=0;
    count++;
    NSString *message=[NSString stringWithFormat:@"Button Press :%d",count];
    [TestFlight passCheckpoint:message];
}

- (IBAction)crash1Pressed:(id)sender {
    
    NSArray *myArray=[NSArray arrayWithObjects:@"0",@"1", nil];
    NSString *temp=[myArray objectAtIndex:2];
}

- (IBAction)crash2Pressed:(id)sender {
}

@end
