//
//  ConcernDataController.m
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import "ConcernDataController.h"

#import "Concern.h"


@interface ConcernDataController ()
- (void)initializeDefaultDataList;
@end



@implementation ConcernDataController



- (void)initializeDefaultDataList {
    NSMutableArray *concernsList = [[NSMutableArray alloc] init];
    self.masterConcernsList = concernsList;
    Concern *concern;
    NSDate *today = [NSDate date];
    concern = [[Concern alloc] initWithName:@"My Head" status:@"Current" date:today instances:nil isRoS:NO];
    [self addConcernWithConcern:concern];
}


- (void)setMasterConcernsList:(NSMutableArray *)newList {
    if (_masterConcernsList != newList) {
        _masterConcernsList = [newList mutableCopy];
    }
}


- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}


- (NSUInteger)countOfList {
    return [self.masterConcernsList count];
}


- (Concern *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterConcernsList objectAtIndex:theIndex];
}

- (void)addConcernWithConcern:(Concern *)concern {
    [self.masterConcernsList addObject:concern];

}





@end
