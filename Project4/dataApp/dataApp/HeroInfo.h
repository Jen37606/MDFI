//
//  HeroInfo.h
//  dataApp
//
//  Created by Jennifer Johnson on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HeroInfo : NSObject
{
    NSString *name;
    NSString *publisher;
}

-(id)initWithName:(NSString*)heroName heroPublisher:(NSString*)heroPublisher;

@end
