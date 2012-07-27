//
//  ItemInfoViewController.h
//  dataApp
//
//  Created by Jennifer Johnson on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemInfoViewController : UIViewController
{
    IBOutlet UILabel *name;
    NSMutableString *outputText;
}

//@property (strong, nonatomic) IBOutlet UILabel *name;
//@property (copy, nonatomic) NSString *message;

-(void)passName:(NSString*)theName publisher:(NSString*)publisherName;

@end
