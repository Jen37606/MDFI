//
//  ThirdViewController.h
//  Project2
//
//  Created by Jennifer Johnson on 6/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *items;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
