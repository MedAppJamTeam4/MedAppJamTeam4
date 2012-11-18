//
//  InstanceDetailViewController.m
//  appointments
//
//  Created by Erick Custodio on 11/17/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "InstanceDetailViewController.h"

@interface InstanceDetailViewController ()

@end

@implementation InstanceDetailViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }

    _instanceDate.text = [formatter stringFromDate:(NSDate *)_passedInstance.date];
    _instanceText.text = _passedInstance.descriptionText;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
