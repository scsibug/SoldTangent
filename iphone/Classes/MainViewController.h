//
//  MainViewController.h
//  SoldTangent
//
//  Created by Paul Hammant on 7/28/10.
//  Copyright (c) 2010 ThoughtWorks. All rights reserved.
//


#import "TangentViewController.h"

@interface MainViewController : UIViewController <TangentViewControllerDelegate> {

    UISegmentedControl *segCont;
}

@property (nonatomic, retain) IBOutlet UISegmentedControl *segCont;

- (IBAction)showInfo:(id)sender;


@end

