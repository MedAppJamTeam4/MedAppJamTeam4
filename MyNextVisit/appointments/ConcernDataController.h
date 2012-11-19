//
//  ConcernDataController.h
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Concern;

@interface ConcernDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterConcernsList;
- (NSUInteger)countOfList;
- (Concern *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addConcernWithConcern:(Concern *)concern;
- (void)setToAddressed:(Concern *)concern;

@end
