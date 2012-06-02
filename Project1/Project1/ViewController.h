//
//  ViewController.h
//  Project1
//
//  Created by Jennifer Johnson on 6/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataLayer;

@interface ViewController : UIViewController
{
    DataLayer *dataLayer;
    IBOutlet UILabel *appTitle;
    IBOutlet UITableView *tableView;
    NSArray *stringArray;
}
@end
