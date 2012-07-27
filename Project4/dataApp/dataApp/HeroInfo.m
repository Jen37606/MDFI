//
//  HeroInfo.m
//  dataApp
//
//  Created by Jennifer Johnson on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HeroInfo.h"

@implementation HeroInfo

- (id)initWithName:(NSString*)heroName heroPublisher:(NSString*)heroPublisher
{
    self = [super init];
    if (self) {
        name = heroName;
        publisher = heroPublisher;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
