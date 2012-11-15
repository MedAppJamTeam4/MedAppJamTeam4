//
//  AddSightingViewController.h
//  BirdWatching
//
//  Created by Erick Custodio on 11/12/12.
//  Copyright (c) 2012 Erick Custodio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddSightingViewController : UITableViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;

@end
