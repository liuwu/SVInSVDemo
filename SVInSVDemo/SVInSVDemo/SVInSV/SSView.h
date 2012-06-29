//
//  SSView.h
//  SVInSVDemo
//
//  Created by loufq on 12-4-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SHorizontalView;

@interface SSView : UIView{
    SHorizontalView* svHorizontal;
}

@property(nonatomic,retain)NSArray* dsOri;
@property(nonatomic,retain)NSIndexPath* curIndexPath;

//ds:array with array
+(id)createWithFrame:(CGRect)frame ds:(NSArray*)ds;
-(id)initWithFrame:(CGRect)frame ds:(NSArray*)ds;




@end
