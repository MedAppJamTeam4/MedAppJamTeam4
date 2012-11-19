//
//  AddMedicationViewController.h
//  appointments
//
//  Created by Ryan Langer on 17.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Medication;

@interface AddMedicationViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *Cancel;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *done;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionField;
@property (weak, nonatomic) IBOutlet UITextField *doseField;
@property (weak, nonatomic) IBOutlet UITextField *freqField;
@property (strong, nonatomic) Medication *med;

@end