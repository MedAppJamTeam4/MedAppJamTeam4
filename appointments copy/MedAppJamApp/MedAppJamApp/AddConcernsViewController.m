//
//  AddConcernsViewController.m
//  MedAppJamApp
//
//  Created by marc wong on 11/16/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import "AddConcernsViewController.h"

#import "Concerns.h"

@interface AddConcernsViewController ()

@end

@implementation AddConcernsViewController


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        if ([self.concernNameInput.text length] || [self.locationInput.text length]) {
            Concerns *concern;
            NSDate *today = [NSDate date];
            concern = [[Concerns alloc] initWithName:self.concernNameInput.text location:self.locationInput.text date:today];
            self.concern = concern;
        }
    }
}


- (BOOL)textFieldShouldREturn:(UITextField *)textField {
    if ((textField == self.concernNameInput) || (textField == self.locationInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source






#pragma mark - Table view delegate


@end
