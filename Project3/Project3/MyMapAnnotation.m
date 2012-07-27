//
//  MyMapAnnotation.m
//  Project3
//
//  Created by Jennifer Johnson on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyMapAnnotation.h"


@implementation MyMapAnnotation

@synthesize title, coordinate;

-(id)initWithTitle:(NSString *)text coord:(CLLocationCoordinate2D)coord
{
    if ((self = [super init]))
    {
        title = text;
        coordinate = coord;
    }
    return self;
}

@end
