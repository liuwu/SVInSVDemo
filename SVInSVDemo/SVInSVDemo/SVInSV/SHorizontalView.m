//
//  SHorizontalView.m
//  SVInSVDemo
//
//  Created by loufq on 12-4-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SHorizontalView.h"

#import "SVerticalView.h"

@implementation SHorizontalView
@synthesize ds,curIndexPath;
- (void)dealloc {
    self.curIndexPath = nil;
    self.ds = nil;
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        myPV=[[[ATPagingView alloc] initWithFrame:frame] autorelease];
        myPV.delegate = self;
        [self addSubview:myPV];
    }
    return self;
}

-(void)setDs:(NSArray *)aDS{
    if (ds!=aDS) {
        [ds release];
        ds =[aDS retain];
    }
    [myPV reloadData];
    myPV.currentPageIndex = 0;
} 

- (NSInteger)numberOfPagesInPagingView:(ATPagingView *)pagingView{
    return self.ds.count;
}

- (UIView *)viewForPageInPagingView:(ATPagingView *)pagingView atIndex:(NSInteger)index{
    SVerticalView* svv =(SVerticalView*)[pagingView dequeueReusablePage];
    if (!svv) {
        svv =[[[SVerticalView alloc] initWithFrame:pagingView.frame] autorelease];

    }
    NSArray* dsChild =[self.ds objectAtIndex:index];
    svv.ds = dsChild;
    return svv;
}

-(void)setCurIndexPath:(NSIndexPath *)aCurIndexPath{
    if (curIndexPath) {
        [curIndexPath release];
    }
    curIndexPath = [aCurIndexPath retain];
    
    myPV.currentPageIndex = aCurIndexPath.section;

    [self performSelector:@selector(delayOper) withObject:nil afterDelay:0.1];
     
}

-(void)delayOper{
    SVerticalView* svv = (SVerticalView*)[myPV viewForPageAtIndex:myPV.currentPageIndex];
    svv.curIndex = curIndexPath.row;
}

@end
