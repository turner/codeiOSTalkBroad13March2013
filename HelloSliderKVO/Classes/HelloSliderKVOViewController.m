//
//  HelloSliderKVOViewController.m
//  HelloSliderKVO
//
//  Created by Douglass Turner on 5/12/10.
//  Copyright Elastic Image Software LLC 2010. All rights reserved.
//

#import "HelloSliderKVOViewController.h"
#import "Counter.h"
#import "Observer.h"

@implementation HelloSliderKVOViewController

@synthesize slider;
@synthesize label;
@synthesize counter;
@synthesize observer;

- (void)dealloc {
	
    self.slider = nil;
    self.label = nil;
    self.counter = nil;
    self.observer = nil;
    
    [super dealloc];
}

-(void) updateLabel:(NSNumber *)newValue {
	
//	NSLog(@"Hello Slider KVO ViewController - updateLabel: %@", newValue);	
	self.label.text = [NSString stringWithFormat:@"%.2f", [newValue floatValue]];	
}

- (void)viewDidLoad {

    self.observer = [[[Observer alloc] initWithTarget:self action:@selector(updateLabel:)] autorelease];		
	[self.counter addObserver:self.observer forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:NULL];		
}

@end
