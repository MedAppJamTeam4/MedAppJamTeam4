//
//  IncidentsDataController.m
//  MedAppJamApp
//
//  Created by marc wong on 11/16/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import "IncidentsDataController.h"

#import "Incidents.h"

@interface IncidentsDataController ()
- (void)initializeDefaultDataList;
@end



@implementation IncidentsDataController

- (void)initializeDefaultDataList {
    NSMutableArray *incidentsList = [[NSMutableArray alloc] init];
    self.masterIncidentsList = incidentsList;
    Incidents *incident;
    NSDate *today = [NSDate date];
    incident = [[Incidents alloc] initWithName:@"headache" location:@"the head" date:today];
    [self addIncidentWithIncident:incident];
}

- (void)setMasterIncidentsList:(NSMutableArray *)newList {
    if (_masterIncidentsList != newList) {
        _masterIncidentsList = [newList mutableCopy];
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
    return [self.masterIncidentsList count];
}

- (Incidents *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterIncidentsList objectAtIndex:theIndex];
}

- (void)addIncidentWithIncident:(Incidents *)incident {
    [self.masterIncidentsList addObject:incident];
}

@end
