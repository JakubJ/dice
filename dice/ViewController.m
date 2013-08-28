//
//  ViewController.m
//  dice
//
//  Created by Martin Meduna on 23.07.13.
//  Copyright (c) 2013 Martin Meduna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

    @property (weak, nonatomic) IBOutlet UIImageView *diceView;

    - (IBAction)buttonRun:(id)sender;


@end

@implementation ViewController

@synthesize diceImg,diceSet;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    diceSet = [NSArray arrayWithObjects:@"dice01.png", @"dice02.png", @"dice03.png", @"dice04.png", @"dice05.png", @"dice06.png", nil];
    
    diceImg = [UIImage imageNamed:[diceSet objectAtIndex:0]];    
    self.diceView.image=diceImg;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonRun:(id)sender {
    
    
    diceImg = [UIImage imageNamed:[diceSet objectAtIndex:arc4random() % 5]];
    self.diceView.image=diceImg;
}
@end
