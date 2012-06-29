//
//  SSView.m
//  SVInSVDemo
//
//  Created by loufq on 12-4-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SSView.h"
#import "SHorizontalView.h"

//Horizontal and vertical

@implementation SSView

@synthesize dsOri,curIndexPath;
- (void)dealloc {
    self.curIndexPath = nil;
    self.dsOri = nil;
    [super dealloc];
}

+(id)createWithFrame:(CGRect)frame ds:(NSArray*)ds{
    SSView* v =[[[self alloc] initWithFrame:frame ds:ds] autorelease];
    return v;
}

-(void)setCurIndexPath:(NSIndexPath *)aCurIndexPath{
    if (curIndexPath) {
        [curIndexPath release];
    }
    curIndexPath = [aCurIndexPath retain]; 
    
    svHorizontal.curIndexPath = self.curIndexPath;
    
}

-(id)initWithFrame:(CGRect)frame ds:(NSArray*)ds{
    self = [super initWithFrame:frame];
    if (self) {
        SHorizontalView* shv =[[[SHorizontalView alloc] initWithFrame:frame] autorelease];
        svHorizontal = shv;
        shv.ds = ds;
        [self addSubview:shv];
    }
    return self;
}

@end
