//
//  SVerticalView.h
//  SVInSVDemo
//
//  Created by loufq on 12-4-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h> 
#import "ATPagingView.h"

@interface SVerticalView : UIView<ATPagingViewDelegate>{ 
    ATPagingView* myPV;  
}

@property(nonatomic,assign) int curIndex;

@property(nonatomic,retain)NSArray* ds;




@end

