//
//  BirdsDetailViewController.h
//  BirdWatching
//
//  Created by Erick Custodio on 11/12/12.
//  Copyright (c) 2012 Erick Custodio. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BirdSighting;
@interface BirdsDetailViewController : UITableViewController

@property (strong, nonatomic) BirdSighting *sighting;
@property (weak, nonatomic) IBOutlet UILabel *birdNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@end
