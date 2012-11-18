//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by Erick Custodio on 11/12/12.
//  Copyright (c) 2012 Erick Custodio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BirdSighting.h"
#import "BirdSightingDataController.h"
@class BirdSightingDataController;
@interface BirdsMasterViewController : UITableViewController
@property (strong,nonatomic) BirdSightingDataController *dataController;
@end
