//
// Created by turner on 3/11/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface Observer : NSObject
- (id)initWithTarget:(id)object action:(SEL)action;
@property(nonatomic, strong) id targetObject;
@property(nonatomic) SEL targetAction;
@end