//
//  SecondViewController.h
//  dataApp
//
//  Created by Jennifer Johnson on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
<UIWebViewDelegate, NSURLConnectionDelegate>
{
    IBOutlet UIWebView *myWebView;
    IBOutlet UIBarButtonItem *backButton;
    NSURL *url;
    NSURLRequest *request;
    NSURLConnection *connection;
}
-(IBAction)onClick:(id)sender;

@end
