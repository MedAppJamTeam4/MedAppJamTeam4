//
//  InstanceDataController.m
//  appointments
//
//  Created by Erick Custodio on 11/17/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "InstanceDataController.h"
#import "Instance.h"

@interface InstanceDataController ()
- (void)initializeDefaultDataList;
@end

@implementation InstanceDataController

- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

- (void)initializeDefaultDataList {
//    NSMutableArray *concernsList = [[NSMutableArray alloc] init];
//    self.masterConcernsList = concernsList;
//    Concern *concern;
//    NSDate *today = [NSDate date];
//    concern = [[Concern alloc] initWithName:@"My Head" status:@"Current" date:today instances:nil isRoS:NO];
//    [self addConcernWithConcern:concern];
}

- (void)setMasterInstanceList:(NSMutableArray *)masterInstanceList {
    if (_masterInstanceList != masterInstanceList) {
        _masterInstanceList = [masterInstanceList mutableCopy];
    }
}

- (NSUInteger)countOfMasterInstanceList {
    return [_masterInstanceList count];
}

- (Instance *)objectInMasterInstanceListAtIndex:(NSUInteger)index {
    return [_masterInstanceList objectAtIndex:index];
}

- (void)addMasterInstanceListObject:(Instance *)object {
    [_masterInstanceList addObject:object];
}
@end
