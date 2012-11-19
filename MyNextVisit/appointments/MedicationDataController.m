//
//  MedicationDataController.m
//  appointments
//
//  Created by App Jam on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "MedicationDataController.h"


@interface MedicationDataController()
-(void)initializeDefaultDataList;

@end


@implementation MedicationDataController

-(NSUInteger) countOfList
{
    return [self.masterMedicationList count];
}

-(Medication *) objectInListAtIndex:(NSUInteger)theIndex
{
    return [self.masterMedicationList objectAtIndex:theIndex];
}

-(void)addMedication:(Medication *)medication
{
    [self.masterMedicationList addObject:medication];
}

-(void)setMasterMedicationList:(NSMutableArray * )newList
{
    if( _masterMedicationList != newList)
        _masterMedicationList = [newList mutableCopy];
}



-(void)initializeDefaultDataList
{
    NSMutableArray *medicationList = [[NSMutableArray alloc]init];
    self.masterMedicationList = medicationList;
    NSLog(@"Created");
  
}

-(id)init{
    if(self == [super init])
    {
        NSLog(@"initialize success");
        [self initializeDefaultDataList];
        return self;
        
    }
    return nil;
    NSLog(@"initialize failed");
}


@end
