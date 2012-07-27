//
//  PlaceInfoViewController.m
//  Project3
//
//  Created by Jennifer Johnson on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PlaceInfoViewController.h"
#import "FirstViewController.h"
#import "MyMapAnnotation.h"
#import <Mapkit/Mapkit.h>

@implementation PlaceInfoViewController

@synthesize mapView, name, which, coordinateLabel, message, position;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //
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



 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad
 
{
     MKCoordinateSpan span;
     span.latitudeDelta = .02f;
     span.longitudeDelta = .02f;
     CLLocationCoordinate2D location;
    
    
    if(which == 0)
    {
        location.latitude = 38.855467f;
        location.longitude = -77.050105f;
        CLLocationCoordinate2D arlington;
        arlington.latitude = 38.855467f;
        arlington.longitude = -77.050105f;
        MyMapAnnotation *annotation = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Arlington, VA" coord:arlington];
        if(annotation != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", arlington.latitude, arlington.longitude];
            
            [mapView addAnnotation:annotation];
        }
    }else if(which == 1){
        location.latitude = 38.916961f;
        location.longitude = -77.095786f;
        CLLocationCoordinate2D palisades;
        palisades.latitude = 38.916961f;
        palisades.longitude = -77.095786f;
        MyMapAnnotation *annotation2 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Washington D.C. (Palisades)" coord:palisades];
        if(annotation2 != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", palisades.latitude, palisades.longitude];
            [mapView addAnnotation:annotation2];
        }
    }else if(which == 2){
        location.latitude = 38.869802f;
        location.longitude = -76.847958f;
        CLLocationCoordinate2D capitalHeights;
        capitalHeights.latitude = 38.869802f;
        capitalHeights.longitude = -76.847958f;
        MyMapAnnotation *annotation3 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Capital Heights, MD" coord:capitalHeights];
        if(annotation3 != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", capitalHeights.latitude, capitalHeights.longitude];
            [mapView addAnnotation:annotation3];
        }
    }else if(which == 3){
        location.latitude = 38.617105f;
        location.longitude = -76.925504f;
        CLLocationCoordinate2D waldorf;
        waldorf.latitude = 38.617105f;
        waldorf.longitude = -76.925504f;
        MyMapAnnotation *annotation4 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Waldorf, MD" coord:waldorf];
        if(annotation4 != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", waldorf.latitude, waldorf.longitude];
            [mapView addAnnotation:annotation4];
        }
    }else if(which == 4){
        location.latitude = 38.74923f;
        location.longitude = -77.086025f;
        CLLocationCoordinate2D alexandria;
        alexandria.latitude = 38.74923f;
        alexandria.longitude = -77.086025f;
        MyMapAnnotation *annotation5 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Alexandria, MD" coord:alexandria];
        if(annotation5 != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", alexandria.latitude, alexandria.longitude];
            [mapView addAnnotation:annotation5];
        }
    }else if(which == 5){
        location.latitude = 38.993088f;
        location.longitude = -76.878723f;
        CLLocationCoordinate2D greenbelt;
        greenbelt.latitude = 38.993088f;
        greenbelt.longitude = -76.878723f;
        MyMapAnnotation *annotation6 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Greenbelt, MD" coord:greenbelt];
        if(annotation6 != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", greenbelt.latitude, greenbelt.longitude];
            [mapView addAnnotation:annotation6];
        }
    }else if(which == 6){
        location.latitude = 38.899074f;
        location.longitude = -77.019121f;
        CLLocationCoordinate2D chinaTown;
        chinaTown.latitude = 38.899074f;
        chinaTown.longitude = -77.019121f;
        MyMapAnnotation *annotation7 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Washington D.C. (China Town)" coord:chinaTown];
        if(annotation7 != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", chinaTown.latitude, chinaTown.longitude];
            [mapView addAnnotation:annotation7];
        }
    }else if(which == 7){
        location.latitude = 38.781362f;
        location.longitude = -77.187072f;
        CLLocationCoordinate2D springfield;
        springfield.latitude = 38.781362f;
        springfield.longitude = -77.187072f;
        MyMapAnnotation *annotation8 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Springfield, VA" coord:springfield];
        if(annotation8 != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", springfield.latitude, springfield.longitude];
            [mapView addAnnotation:annotation8];
        }
    }else if(which == 8){
        location.latitude = 38.848574f;
        location.longitude = -76.882938f;
        CLLocationCoordinate2D forestville;
        forestville.latitude = 38.848574f;
        forestville.longitude = -76.882938f;
        MyMapAnnotation *annotation9 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Forestville, MD" coord:forestville];
        if(annotation9 != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", forestville.latitude, forestville.longitude];
            [mapView addAnnotation:annotation9];
        }
    }else if(which == 9){
        location.latitude = 38.644101f;
        location.longitude = -77.294142f;
        CLLocationCoordinate2D woodbridge;
        woodbridge.latitude = 38.644101f;
        woodbridge.longitude = -77.294142f;
        MyMapAnnotation *annotation10 = [[MyMapAnnotation alloc] initWithTitle:@"The Noodle Place - Woodbridge, VA" coord:woodbridge];
        if(annotation10 != nil){
            position = [NSString stringWithFormat:@"Latitude: %g\nLongitude: %g", woodbridge.latitude, woodbridge.longitude];
            [mapView addAnnotation:annotation10];
        }
    }
    
    MKCoordinateRegion region;
    region.center = location;
    region.span = span;
    mapView.region = region;
    
     
 [super viewDidLoad];
 }


- (void)viewWillAppear:(BOOL)animated {
    name.text = message;
    coordinateLabel.text = position;
    
   [super viewWillAppear:animated];
}

- (void)viewDidUnload
{
    self.title = nil;
    //self.message = nil;
    //self.which = nil;
    //self.lon = nil;
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
