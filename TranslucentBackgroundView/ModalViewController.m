//
//  ModalViewController.m
//  TranslucentBackgroundView
//
//  Created by John Paul Manoza on 9/7/13.
//  Copyright (c) 2013 John Paul Manoza. All rights reserved.
//

#import "ModalViewController.h"
#import "UIImage+ImageEffects.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[self.translucentBackgroundImage applyLightEffect]];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissModalView:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
