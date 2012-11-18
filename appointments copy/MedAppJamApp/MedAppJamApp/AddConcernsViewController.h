//
//  AddConcernsViewController.h
//  MedAppJamApp
//
//  Created by marc wong on 11/16/12.
//  Copyright (c) 2012 marc wong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Concerns;

@interface AddConcernsViewController : UITableViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *concernNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;
@property (strong, nonatomic) Concerns *concern;

@end
