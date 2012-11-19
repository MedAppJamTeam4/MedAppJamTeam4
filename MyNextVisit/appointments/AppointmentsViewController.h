//
//  AppointmentsViewController.h
//  appointments
//
//  Created by Ryan Langer on 15.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AppointmentDataController;

@interface AppointmentsViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *add;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *edit;
@property (weak, nonatomic) IBOutlet UITableViewCell *apptCell;
-(void)addNewAppointment:(id)sender;
-(void)viewMedCell:(UITableViewCell *)viewCell;
-(void)setEdit:(UIBarButtonItem *)edit;
- (IBAction)ApptDone:(UIStoryboardSegue *)segue;
@property(strong, nonatomic)AppointmentDataController *dataController;
-(IBAction)ApptCancel:(UIStoryboardSegue *)segue;
@end
