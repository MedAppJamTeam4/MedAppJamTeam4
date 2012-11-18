//
//  NewConcernViewController.h
//  appointments
//
//  Created by Erick Custodio on 11/16/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Concern;
@interface NewConcernViewController : UIViewController <UITextFieldDelegate> {
    UIDatePicker *datePicker;
}
@property (weak, nonatomic) IBOutlet UITextField *nameInput;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) Concern *myConcern;
@end
