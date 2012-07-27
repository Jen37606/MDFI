//
//  ItemInfoViewController.m
//  dataApp
//
//  Created by Jennifer Johnson on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ItemInfoViewController.h"

@interface ItemInfoViewController ()

@end

@implementation ItemInfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

-(void)passName:(NSString*)theName publisher:(NSString*)publisherName
{
    self.title = theName;
    NSString *tempName = [[NSString alloc] initWithFormat:@"%@",theName];
    NSString *tempPublisher = [[NSString alloc] initWithFormat:@"\n %@",publisherName];
    name.text = @"";
    outputText = [NSMutableString stringWithString:name.text];
    [outputText appendString:tempName];
    [outputText appendString:tempPublisher];
    name.text = outputText;
    
}
 
 - (void)viewWillAppear:(BOOL)animated {
     //name.text = theName;
     
     [super viewWillAppear:animated];
 }

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
