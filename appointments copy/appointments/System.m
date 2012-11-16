//
//  System.m
//  appointments
//
//  Created by Erick Custodio on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "System.h"

@implementation System
-(id)initWithName:(NSString *)name conditions:(NSMutableArray *)conditions completed:(BOOL)completed noProblems:(BOOL)noProbs {
    self = [super init];
    if (self) {
        _name = name;
        _conditions = conditions;
        _completed = completed;
        _noProbs = noProbs;
        return self;
    }
    return nil;
}
@end
