//
//  SecondView.h
//  Project1
//
//  Created by Jennifer Johnson on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondView : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (copy, nonatomic) NSString *message;

- (IBAction)back:(id)sender;


@end
