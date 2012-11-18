//
//  RoSDataController.m
//  appointments
//
//  Created by Erick Custodio on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "RoSDataController.h"
#import "RoS.h"

@interface RoSDataController ()
- (void)initializeDefaultDataList;
@end


@implementation RoSDataController

- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

- (void)initializeDefaultDataList {

}

- (void)setMasterRoSList:(NSMutableArray *)newList {
    if (_masterRoSList != newList) {
        _masterRoSList = [newList mutableCopy];
    }
}

- (NSUInteger)countOfList {
    return [self.masterRoSList count];
}

- (RoS *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterRoSList objectAtIndex:theIndex];
}

- (void)addRoSWithNewRoS:(RoS *)newRoS {
    [self.masterRoSList addObject:newRoS];
}

@end
