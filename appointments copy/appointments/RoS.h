//
//  RoS.h
//  appointments
//
//  Created by Erick Custodio on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "System.h"

@interface RoS : NSObject
@property (nonatomic, copy) NSDate *date;
@property (nonatomic, copy) NSMutableArray *systems;
-(id)initWithName:(NSDate *)date systems:(NSMutableArray *)systems;

@end
