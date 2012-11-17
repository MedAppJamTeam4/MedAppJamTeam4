//
//  MedicationDataController.h
//  appointments
//
//  Created by App Jam on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Medication;

@interface MedicationDataController : NSObject


@property (nonatomic, copy) NSMutableArray *masterMedicationList;

-(void)setMasterMedicationList:(NSMutableArray * )newList;
-(Medication *) objectInListAtIndex:(NSUInteger)theIndex;
-(void)addMedication:(Medication *)medication;
-(void)initializeDefaultDataList;
-(NSUInteger) countOfList;

@end
