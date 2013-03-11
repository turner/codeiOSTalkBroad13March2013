//
// Created by turner on 3/11/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Counter.h"

@implementation Counter

@synthesize count;

-(IBAction) trackSlider:(UISlider *)slider; {
    self.count = [NSNumber numberWithFloat:slider.value];
}

@end