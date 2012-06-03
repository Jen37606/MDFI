//
//  CustomTableCell.m
//  Project1
//
//  Created by Jennifer Johnson on 6/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomTableCell.h"

@implementation CustomTableCell

@synthesize name;
@synthesize system;

@synthesize nameLabel;
@synthesize systemLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



- (void)setName:(NSString *)n {
    if (![n isEqualToString:name]) {
        name = [n copy];
        nameLabel.text = name;
    }
}

- (void)setSystem:(NSString *)s {
    if (![s isEqualToString:system]) {
        system = [s copy];
        systemLabel.text = system;
    }
}

@end
