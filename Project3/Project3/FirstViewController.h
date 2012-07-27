//
//  FirstViewController.h
//  Project3
//
//  Created by Jennifer Johnson on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyMapAnnotation.h"
#import "PlaceInfoViewController.h"

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    MyMapAnnotation *title;
    PlaceInfoViewController *map;
    double *lat;
    double *lon;
}

@property (strong, nonatomic) NSMutableArray *places;

@property (strong, nonatomic) IBOutlet UITableView *myTableView;


@end
