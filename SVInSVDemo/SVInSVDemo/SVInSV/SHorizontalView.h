//
//  SHorizontalView.h
//  SVInSVDemo
//
//  Created by loufq on 12-4-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ATPagingView.h"

@interface SHorizontalView : UIView<ATPagingViewDelegate>{ 
    ATPagingView* myPV;  
}

@property(nonatomic,retain)NSArray* ds;




@end
