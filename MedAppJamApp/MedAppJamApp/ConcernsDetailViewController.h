//
//  ConcernsDetailViewController.h
//  MedAppJamApp
//
//  Created by marc wong on 11/14/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Concerns;

@interface ConcernsDetailViewController : UIViewController 

@property (strong, nonatomic) Concerns *concern;
@property (weak, nonatomic) IBOutlet UILabel *concernNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end
