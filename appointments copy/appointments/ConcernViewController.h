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
@interface ConcernViewController : UIViewController <UITableViewDataSource,UITableViewDelegate> {
    UITableView *myTableView;
    UISegmentedControl *segmentedControl;
    NSInteger selectedSegment;
    
    NSArray *selected;
    NSMutableArray *current;
    
}
@property (strong,nonatomic) ConcernDataController *dataController;
@property (strong,nonatomic) IBOutlet UITableView *myTableView;

- (IBAction)segmentAction:(id)sender;
@end
