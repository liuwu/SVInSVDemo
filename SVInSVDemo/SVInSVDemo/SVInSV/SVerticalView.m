//
//  SVerticalView.m
//  SVInSVDemo
//
//  Created by loufq on 12-4-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SVerticalView.h"

@implementation SVerticalView
@synthesize ds,curIndex;
- (void)dealloc {
    self.ds = nil;
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        myPV=[[[ATPagingView alloc] initWithFrame:frame] autorelease];
        myPV.direction = ATPagingViewVertical;
        myPV.delegate = self;
        [self addSubview:myPV];
    }
    return self;
}

- (NSInteger)numberOfPagesInPagingView:(ATPagingView *)pagingView{
    return self.ds.count;
}

-(void)setDs:(NSArray *)aDS{
    if (ds!=aDS) {
        [ds release];
        ds =[aDS retain];
    }
    [myPV reloadData];
    myPV.currentPageIndex = 0;
}

-(void)setCurIndex:(int)aCurIndex{
    curIndex = aCurIndex;
    [myPV reloadData];
    myPV.currentPageIndex = curIndex;
}


- (UIView *)viewForPageInPagingView:(ATPagingView *)pagingView atIndex:(NSInteger)index{
    UIImageView* iv =(UIImageView*)[pagingView dequeueReusablePage];
    if (!iv) {
        iv =[[[UIImageView alloc] initWithFrame:pagingView.frame] autorelease]; 
    }
    NSString* path = [self.ds objectAtIndex:index];
    iv.image = [UIImage imageWithContentsOfFile:path];
    return iv;
}




@end
