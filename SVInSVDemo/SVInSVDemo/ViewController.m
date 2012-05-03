//
//  ViewController.m
//  SVInSVDemo
//
//  Created by loufq on 12-4-27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SSView.h"

@interface ViewController(P)
    -(NSString*)getPath:(NSString*)name;
@end

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(NSString*)getPath:(NSString*)name{
    return [[[NSBundle mainBundle] resourcePath] stringByAppendingFormat:@"/Res/%@.png",name];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray* ds =[NSArray arrayWithObjects: 
                  [NSArray arrayWithObjects:[self getPath:@"01"],[self getPath:@"02"],[self getPath:@"03"],nil],
                  [NSArray arrayWithObjects:[self getPath:@"10"],[self getPath:@"11"],[self getPath:@"12"],nil],
                  [NSArray arrayWithObjects:[self getPath:@"20"],[self getPath:@"21"],nil],
                  [NSArray arrayWithObjects:[self getPath:@"30"],[self getPath:@"31"],nil],
                  [NSArray arrayWithObjects:[self getPath:@"40"],nil],
                  [NSArray arrayWithObjects:[self getPath:@"50"],[self getPath:@"51"],nil],
                  nil];
    SSView* sv =[SSView createWithFrame:self.view.bounds ds:ds];
    [self.view addSubview:sv];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
