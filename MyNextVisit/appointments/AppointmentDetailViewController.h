//
//  AppointmentDetailViewController.h
//  appointments
//
//  Created by Ryan Langer on 18.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Appointment;

@interface AppointmentDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *edit;
@property (weak, nonatomic) IBOutlet UITextField *dateField;
@property (weak, nonatomic) IBOutlet UITextField *timeField;
@property (weak, nonatomic) IBOutlet UITextField *doctorNameField;
@property (weak, nonatomic) IBOutlet UITextView *additionalInformation;
-(IBAction)EditMode;
@property(strong, nonatomic) Appointment *appt;

@end
