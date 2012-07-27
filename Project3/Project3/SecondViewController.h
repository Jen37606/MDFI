//
//  SecondViewController.h
//  Project3
//
//  Created by Jennifer Johnson on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Mapkit/Mapkit.h>
#import "MyMapAnnotation.h"

@interface SecondViewController : UIViewController
{
    MyMapAnnotation *title;
    MyMapAnnotation *latitude;
    MyMapAnnotation *longitude;
    IBOutlet MKMapView *allMap;
}
@end
