//
//  TangentViewController.m
//  SoldTangent
//
//  Created by Paul Hammant on 7/28/10.
//  Copyright (c) 2010 ThoughtWorks. All rights reserved.
//

#import "TangentViewController.h"


@implementation TangentViewController

@synthesize delegate;


- (void)viewDidLoad {
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];      
}


- (IBAction)done:(id)sender {
	[self.delegate tangentViewControllerDidFinish:self];	
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES; // for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)dealloc {
    [super dealloc];
}


@end
