//
//  MainViewController.m
//  SoldTangent
//
//  Created by Paul Hammant on 7/28/10.
//  Copyright (c) 2010 ThoughtWorks. All rights reserved.
//


#import "MainViewController.h"

@implementation MainViewController

@synthesize segCont;

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
}
*/


- (void)tangentViewControllerDidFinish:(TangentViewController *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}


- (IBAction)showInfo:(id)sender {    
	TangentViewController *controller;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        controller = [[TangentViewController alloc] initWithNibName:@"TangentView-iPad" bundle:nil];
    } else {
        controller = [[TangentViewController alloc] initWithNibName:@"TangentView" bundle:nil];
    }
	
	controller.delegate = self;
	
    if ([segCont selectedSegmentIndex] == 0) {
        controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    } else if ([segCont selectedSegmentIndex] == 1) {
        controller.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    } else if ([segCont selectedSegmentIndex] == 2) {
        controller.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    } else if ([segCont selectedSegmentIndex] == 3) {
        controller.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    }
    
	
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES; // for supported orientations.
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)dealloc {

    [super dealloc];
}

@end

