//
//  InstanceDataController.h
//  appointments
//
//  Created by Erick Custodio on 11/17/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Instance;
@interface InstanceDataController : NSObject
@property (nonatomic, copy) NSMutableArray *masterInstanceList;
- (NSUInteger)countOfMasterInstanceList;
- (Instance *)objectInMasterInstanceListAtIndex:(NSUInteger)index;
- (void)addMasterInstanceListObject:(Instance *)object;
@end
