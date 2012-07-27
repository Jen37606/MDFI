//
//  PlaceInfoViewController.h
//  Project3
//
//  Created by Jennifer Johnson on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Mapkit/Mapkit.h>
#import "MyMapAnnotation.h"

@interface PlaceInfoViewController : UIViewController
{
    IBOutlet MKMapView *mapView;
    IBOutlet UILabel *name;
    IBOutlet UILabel *coordinateLabel;
}

@property (nonatomic, assign) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *coordinateLabel;
@property (copy, nonatomic) NSString *message;
@property (nonatomic, assign) int which;
@property (nonatomic, assign) NSString *position;

@end
