//
//  ConcernsDataController.m
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import "ConcernsDataController.h"

#import "Concerns.h"


@interface ConcernsDataController ()
- (void)initializeDefaultDataList;
@end



@implementation ConcernsDataController



- (void)initializeDefaultDataList {
    NSMutableArray *concernsList = [[NSMutableArray alloc] init];
    self.masterConcernsList = concernsList;
    Concerns *concern;
    NSDate *today = [NSDate date];
    concern = [[Concerns alloc] initWithName:@"First Concern" location:@"My head" date:today];
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


- (Concerns *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterConcernsList objectAtIndex:theIndex];
}

- (void)addConcernWithConcern:(Concerns *)concern {
    [self.masterConcernsList addObject:concern];

}





@end
