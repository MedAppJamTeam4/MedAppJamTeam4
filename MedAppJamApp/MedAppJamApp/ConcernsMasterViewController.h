//
//  ConcernsMasterViewController.h
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ConcernsDetailViewController;

@class ConcernsDataController;

@interface ConcernsMasterViewController : UITableViewController

@property (strong, nonatomic) ConcernsDataController *dataController;

@property (strong, nonatomic) ConcernsDetailViewController *detailViewController;

@end
