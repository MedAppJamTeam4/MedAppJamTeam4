//
//  AddMedicationViewController.m
//  appointments
//
//  Created by Ryan Langer on 17.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "AddMedicationViewController.h"
#import "Medication.h"
#import "MedicationViewController.h"
#import "MedicationDataController.h"

@class Medication;

@interface AddMedicationViewController ()

@end

@implementation AddMedicationViewController


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
	NSLog(@"checks if field should return");
    if ((textField == self.nameField)||(textField ==self.doseField) || (textField == self.freqField) ){
		[textField resignFirstResponder];
        NSLog(@"Field should return");
	}
	return YES;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"get to segue");
    if([[segue identifier] isEqualToString:@"ReturnInput"]){
        if([self.nameField.text length] || [self.doseField.text length] || ([self.freqField.text length])){
            NSLog(@"fields have text");
            Medication *medication;
            medication = [[Medication alloc] initWithName:_nameField.text Dose:_doseField.text Frequency:_freqField.text Description:_descriptionField.text];
            self.med = medication;
        }
    }
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [_nameField becomeFirstResponder];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
