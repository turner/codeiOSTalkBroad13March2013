//
//  EIViewController.m
//  HelloSlider
//
//  Created by Douglass Turner on 03/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "EIViewController.h"
#import "Observer.h"
#import "Counter.h"

@interface EIViewController ()
@property(nonatomic, strong) IBOutlet UILabel *label;
@property(nonatomic, strong)          Observer *observer;
@property(nonatomic, strong) IBOutlet Counter *counter;
@end

@implementation EIViewController

@synthesize label;
@synthesize observer;
@synthesize counter;

- (void)viewDidLoad {

    self.observer = [[Observer alloc] initWithTarget:self
                                              action:@selector(updateLabel:)];

    [self.counter addObserver:self.observer
                   forKeyPath:@"count"
                      options:NSKeyValueObservingOptionNew
                      context:NULL];
}

-(void) updateLabel:(NSNumber *)newValue {

    self.label.text = [NSString stringWithFormat:@"%.2f", [newValue floatValue]];
}

@end