//
//  InstanceDetailViewController.h
//  appointments
//
//  Created by Erick Custodio on 11/17/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Instance.h"
@interface InstanceDetailViewController : UIViewController
@property (strong,nonatomic) Instance *passedInstance;
@property (strong,nonatomic) IBOutlet  UILabel *instanceDate;
@property (strong,nonatomic) IBOutlet UITextView *instanceText;
@end
