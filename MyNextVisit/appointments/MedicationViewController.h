//
//  MedicationViewController.h
//  appointments
//
//  Created by Ryan Langer on 15.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MedicationDataController;

@interface MedicationViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *add;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *edit;
@property (weak, nonatomic) IBOutlet UITableViewCell *medCell;
-(void)addNewMedication:(id)sender;
-(void)viewMedCell:(UITableViewCell *)viewCell;
-(void)setEdit:(UIBarButtonItem *)edit;
- (IBAction)done:(UIStoryboardSegue *)segue;
- (IBAction)cancel:(UIStoryboardSegue *)segue;
@property(strong, nonatomic)MedicationDataController *dataController;
@end
