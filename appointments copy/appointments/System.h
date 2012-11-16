//
//  System.h
//  appointments
//
//  Created by Erick Custodio on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface System : NSObject
@property (nonatomic,copy) NSString *name;
@property BOOL completed;
@property (nonatomic,copy) NSMutableArray *conditions;
@property BOOL noProbs;
-(id)initWithName:(NSString *)name conditions:(NSMutableArray *)conditions completed:(BOOL)completed noProblems:(BOOL)noProbs;

@end
