//
//  SingleMedicationViewController.m
//  appointments
//
//  Created by Ryan Langer on 17.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "SingleMedicationViewController.h"
#import "Medication.h"

@interface SingleMedicationViewController ()
-(void)configureView;
@end

@implementation SingleMedicationViewController

@synthesize med;

BOOL editing = NO;

-(IBAction)setEditing
{
    if (!editing) {
        editing = YES;
        _Edit.title = @"Done";
        _descriptionText.editable = YES;
        _nameLabel.userInteractionEnabled = YES;
        _dosage.userInteractionEnabled = YES;
        _frequency.userInteractionEnabled = YES;
        self.navigationItem.title = @"Editing Medication";
        //check that editing is not set. If not set, set it and change the button's title to 'Done.' Make fields editable.
    }
    else{
        editing = NO;
        _Edit.title = @"Edit";
        _descriptionText.editable = NO;
        _nameLabel.userInteractionEnabled = NO;
        _dosage.userInteractionEnabled = NO;
        _frequency.userInteractionEnabled = NO;
        med.description = _descriptionText.text;
        med.name = _nameLabel.text;
        med.dose = _dosage.text;
        med.frequency = _frequency.text;
        self.navigationItem.title = @"Medication";
        //Editing is already set. Unset it and change the button's title to 'Edit.' Make it so fields cannot be edited. Update the medication item.
        
    }
}
-(void)setMed:(Medication *)newMed
{
    if(med != newMed){
        med = newMed;
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

-(void)viewDidUnload
{
    self.descriptionText = nil;
    self.nameLabel = nil;
    self.dosage = nil;
    self.frequency = nil;
}
/*
-(void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    
    _descriptionText.editable = editing;
    
	[self.navigationItem setHidesBackButton:editing animated:YES];
    
	*
	 If editing is finished, update the medication's description.
            Green code is to save the managed object context.
	 *
	if (!editing) {
		med.description = _descriptionText.text;
		
		* error handling. ignore for now, until I understand what it's doing or if it's needed*
        NSManagedObjectContext *context = med.managedObjectContext;
		NSError *error = nil;
		if (![context save:&error]) {
			*
			 Replace this implementation with code to handle the error appropriately.
			 
			 abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
			 *
			NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
			abort();
		}
	}
}*/
-(void)configureView
{
    Medication *theMed = self.med;
    if(theMed)
    {
        self.navigationItem.title = @"Medication";
        self.nameLabel.text = med.name;
        _descriptionText.text = med.description;
        _dosage.text = med.dose;
        _frequency.text = med.frequency;
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

@end
