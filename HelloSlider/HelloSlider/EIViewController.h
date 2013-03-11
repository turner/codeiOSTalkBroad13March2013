//
//  EIViewController.h
//  HelloSlider
//
//  Created by Douglass Turner on 03/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Observer;
@class Counter;

@interface EIViewController : UIViewController
@property(nonatomic, strong) IBOutlet UILabel *label;
@property(nonatomic, strong)          Observer *observer;
@property(nonatomic, strong) IBOutlet Counter *counter;
- (void)updateLabel:(NSNumber *)newValue;
@end
