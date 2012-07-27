//
//  FirstViewController.h
//  dataApp
//
//  Created by Jennifer Johnson on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <NSXMLParserDelegate, UITableViewDelegate, UITableViewDataSource, NSURLConnectionDataDelegate>
{
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSMutableData *requestData;
    NSInteger numItems;
    NSMutableArray *items;
    
    IBOutlet UITableView *myTableView;
}


//@property (strong, nonatomic) NSMutableArray *items;

//@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end
