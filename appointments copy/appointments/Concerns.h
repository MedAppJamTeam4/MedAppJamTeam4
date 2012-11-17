//
//  Concerns.h
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Instance.h"

@interface Concerns : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *status;

@property (nonatomic, copy) NSDate *startDate;

@property (nonatomic, copy) NSMutableArray *instances;

- (id)initWithName:(NSString *)name status:(NSString *)status date:(NSDate *)startDate instances:(NSMutableArray *)instances;

@end
