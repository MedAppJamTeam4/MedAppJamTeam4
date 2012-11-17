//
//  ListedConcernViewController.h
//  appointments
//
//  Created by Ryan Langer on 15.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Concern.h"
#import "Instance.h"
#import "InstanceDataController.h"
@class ConcernDataController;
@interface ListedConcernViewController : UITableViewController
@property (strong,nonatomic) InstanceDataController *dataController;
@property (strong,nonatomic) Concern *passedConcern;
@end
