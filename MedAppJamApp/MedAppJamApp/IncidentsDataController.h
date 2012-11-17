//
//  IncidentsDataController.h
//  MedAppJamApp
//
//  Created by marc wong on 11/16/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Incidents;

@interface IncidentsDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterIncidentsList;
- (NSUInteger)countOfList;
- (Incidents *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addIncidentWithIncident:(Incidents *)incident;

@end
