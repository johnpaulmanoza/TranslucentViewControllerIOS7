//
//  ViewController.m
//  TranslucentBackgroundView
//
//  Created by Team OPS Inc on 9/7/13.
//  Copyright (c) 2013 John Paul Manoza. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    if([UIScreen mainScreen].bounds.size.height>=568) {
        self.backgroundView.image = [UIImage imageNamed:@"cheetah1136h.png"];
    } else {
        self.backgroundView.image = [UIImage imageNamed:@"cheetah.png"];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - takeScreenshot of any view
- (UIImage *)imageWithView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, [[UIScreen mainScreen] scale]);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

#pragma mark - segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"fromViewControllerToModalViewController"]) {
        UINavigationController *nav = (UINavigationController *)[segue destinationViewController];
        ModalViewController *modal = (ModalViewController *)[nav topViewController];
        [modal setTranslucentBackgroundImage:[self imageWithView:self.view]];
    }
}

- (IBAction)showModalView:(id)sender
{
    [self performSegueWithIdentifier:@"fromViewControllerToModalViewController" sender:self];
}
@end
