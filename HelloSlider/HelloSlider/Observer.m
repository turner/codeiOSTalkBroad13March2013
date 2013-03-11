//
// Created by turner on 3/11/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Observer.h"

@implementation Observer

@synthesize targetObject;
@synthesize targetAction;

-(id) initWithTarget:(id)object action:(SEL)action {

    if (self = [super init]) {

        self.targetObject = object;
        self.targetAction = action;
    }

    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    
    [self.targetObject performSelectorOnMainThread:self.targetAction
                                        withObject:[object valueForKeyPath:keyPath]
                                     waitUntilDone:NO];

}

@end