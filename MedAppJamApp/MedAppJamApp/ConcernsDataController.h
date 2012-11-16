//
//  ConcernsDataController.h
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Concerns;

@interface ConcernsDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterConcernsList;
- (NSUInteger)countOfList;
- (Concerns *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addConcernWithConcern:(Concerns *)concern;

@end
