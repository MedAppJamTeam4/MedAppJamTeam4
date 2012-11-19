//
//  ConcernViewController.h
//  appointments
//
//  Created by Ryan Langer on 15.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Concern.h"
#import "ConcernDataController.h"
@class ConcernDataController;
@interface ConcernViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *Edit;
@property (strong,nonatomic) ConcernDataController *dataController;
//-(IBAction)EditingMode;
-(IBAction)toggleEditMode;
@end
