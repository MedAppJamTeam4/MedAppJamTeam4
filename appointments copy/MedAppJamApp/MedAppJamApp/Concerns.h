//
//  Concerns.h
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Concerns : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *location;

@property (nonatomic, copy) NSDate *date;
- (id)initWithName:(NSString *)name location:(NSString *)location date:(NSDate *)date;

@end
