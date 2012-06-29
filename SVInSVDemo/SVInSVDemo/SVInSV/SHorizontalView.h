//
//  SHorizontalView.h
//  SVInSVDemo
//
//  Created by loufq on 12-4-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ATPagingView.h"

@class SVerticalView;

@interface SHorizontalView : UIView<ATPagingViewDelegate>{ 
    ATPagingView* myPV; 
    SVerticalView* svVertical;
}

@property(nonatomic,retain)NSArray* ds;
@property(nonatomic,retain)NSIndexPath* curIndexPath;



@end
