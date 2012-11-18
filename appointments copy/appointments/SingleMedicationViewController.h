//
//  SingleMedicationViewController.h
//  appointments
//
//  Created by Ryan Langer on 17.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Medication;

@interface SingleMedicationViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameLabel;
@property (retain, nonatomic) IBOutlet UITextView *descriptionText;
@property (weak, nonatomic) IBOutlet UITextField *dosage;
@property (weak, nonatomic) IBOutlet UITextField *frequency;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancel;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *Edit;
@property (nonatomic, strong) Medication *med;
-(IBAction)setEditing;
@end
