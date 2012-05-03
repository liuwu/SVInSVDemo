//
//  SSView.h
//  SVInSVDemo
//
//  Created by loufq on 12-4-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSView : UIView

@property(nonatomic,retain)NSArray* dsOri;


//ds:array with array
+(id)createWithFrame:(CGRect)frame ds:(NSArray*)ds;
-(id)initWithFrame:(CGRect)frame ds:(NSArray*)ds;

@end
