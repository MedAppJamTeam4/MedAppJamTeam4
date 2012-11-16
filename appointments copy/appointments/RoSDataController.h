//
//  RoSDataController.h
//  appointments
//
//  Created by Erick Custodio on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RoS.h"
#import "System.h"

@interface RoSDataController : NSObject
@property (nonatomic, copy) NSMutableArray *masterRoSList;
- (NSUInteger)countOfList;
- (RoS *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addRoSWithNewRoS:(RoS *)newRoS;

@end
