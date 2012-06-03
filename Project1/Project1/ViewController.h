//
//  ViewController.h
//  Project1
//
//  Created by Jennifer Johnson on 6/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

-(IBAction)editButton:(id)sender;
@property (strong, nonatomic) NSMutableArray *games;

@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end
