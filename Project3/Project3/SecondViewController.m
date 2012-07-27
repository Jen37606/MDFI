//
//  SecondViewController.m
//  Project3
//
//  Created by Jennifer Johnson on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"
#import "MyMapAnnotation.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map", @"Map");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MKCoordinateSpan span;
    span.latitudeDelta =.5f;
    span.longitudeDelta = .5f;
    CLLocationCoordinate2D location;
    location.latitude = 38.855467f;
    location.longitude = -77.050105f;
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    allMap.region = region;
    
    CLLocationCoordinate2D arlington;
    arlington.latitude = 38.855467f;
    arlington.longitude = -77.050105f;
    
    CLLocationCoordinate2D palisades;
    palisades.latitude = 38.916961f;
    palisades.longitude = -77.095786f;
    
    CLLocationCoordinate2D capitalHeights;
    capitalHeights.latitude = 38.869802f;
    capitalHeights.longitude = -76.847958f;
    
    CLLocationCoordinate2D waldorf;
    waldorf.latitude = 38.617105f;
    waldorf.longitude = -76.925504f;
    
    CLLocationCoordinate2D alexandria;
    alexandria.latitude = 38.74923f;
    alexandria.longitude = -77.086025f;
    
    CLLocationCoordinate2D greenbelt;
    greenbelt.latitude = 38.993088f;
    greenbelt.longitude = -76.878723f;
    
    CLLocationCoordinate2D chinaTown;
    chinaTown.latitude = 38.899074f;
    chinaTown.longitude = -77.019121f;
    
    CLLocationCoordinate2D springfield;
    springfield.latitude = 38.781362f;
    springfield.longitude = -77.187072f;
    
    CLLocationCoordinate2D forestville;
    forestville.latitude = 38.848574f;
    forestville.longitude = -76.882938f;
    
    CLLocationCoordinate2D woodbridge;
    woodbridge.latitude = 38.644101f;
    woodbridge.longitude = -77.294142f;
    
    
    MyMapAnnotation *annotation = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Arlington" coord:arlington];
    MyMapAnnotation *annotation2 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Washington D.C." coord:palisades];
    MyMapAnnotation *annotation3 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Capital Heights, MD" coord:capitalHeights];
    MyMapAnnotation *annotation4 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Waldorf, MD" coord:waldorf];
    MyMapAnnotation *annotation5 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Alexandria, MD" coord:alexandria];
    MyMapAnnotation *annotation6 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Greenbelt, MD" coord:greenbelt];
    MyMapAnnotation *annotation7 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Washington D.C. (China Town)" coord:chinaTown];
    MyMapAnnotation *annotation8 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Springfield, VA" coord:springfield];
    MyMapAnnotation *annotation9 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Forestville, MD" coord:forestville];
    MyMapAnnotation *annotation10 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Woodbridge, VA" coord:woodbridge];

    [allMap addAnnotations:[NSArray arrayWithObjects:annotation, annotation2, annotation3, annotation4, annotation5, annotation6, annotation7, annotation8, annotation9, annotation10, nil]];
    
    

    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
        [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
