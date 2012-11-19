//
//  AppointmentDetailViewController.m
//  appointments
//
//  Created by Ryan Langer on 18.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "AppointmentDetailViewController.h"
#import "Appointment.h"

@interface AppointmentDetailViewController ()

@end

@implementation AppointmentDetailViewController


BOOL editingMode = NO;
-(IBAction)EditMode
{
    if(!editingMode){
        editingMode = YES;
        _edit.title = @"Done";
        self.dateField.userInteractionEnabled = YES;
        self.timeField.userInteractionEnabled = YES;
        self.doctorNameField.userInteractionEnabled = YES;
        self.additionalInformation.editable = YES;
        self.navigationItem.title = @"Editing Appointment";
    }
    else{
        editingMode = NO;
        _edit.title = @"Edit";
        self.dateField.userInteractionEnabled = NO;
        self.timeField.userInteractionEnabled = NO;
        self.doctorNameField.userInteractionEnabled = NO;
        self.additionalInformation.editable = NO;
        _appt.description = _additionalInformation.text;
        _appt.date   = _dateField.text;
        _appt.time = _timeField.text;
        _appt.doctorName = _doctorNameField.text;
        self.navigationItem.title = @"Appointment";
    }
}
-(void)setAppt:(Appointment *)appt:(Appointment *)newAppt
{
    if(appt != newAppt){
        appt = newAppt;
        [self configureView];
    }
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)configureView
{
    Appointment *theAppt = self.appt;
    if(theAppt)
    {
        self.navigationItem.title = @"Appointment";
        if([theAppt.doctorName length] || [theAppt.date length] || [theAppt.time length])
        {
            //check if the Appointment has already been made by checking if any of the fields have been filled in. If yes, then fill in the fields with the appointment's information
            self.dateField.text = theAppt.date;
            self.additionalInformation.text = theAppt.description;
            self.timeField.text = theAppt.time;
            self.doctorNameField.text = theAppt.doctorName;
        }
    }
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"get to segue");
    if([[segue identifier] isEqualToString:@"ReturnInput"]){
        if([self.dateField.text length] || [self.timeField.text length] || ([self.doctorNameField.text length] || [self.additionalInformation.text length])){
            NSLog(@"fields have text");
            Appointment *myAppointment;
            myAppointment = [[Appointment alloc] initWithDate:_dateField.text Location:nil Doctor:_doctorNameField.text PhoneNumber:nil time:_timeField.text description:_additionalInformation.text];
            self.appt = myAppointment;
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setEdit:nil];
    [self setDateField:nil];
    [self setTimeField:nil];
    [self setDoctorNameField:nil];
    [self setAdditionalInformation:nil];
    [super viewDidUnload];
}
@end
