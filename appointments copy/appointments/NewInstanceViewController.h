//
//  NewInstanceViewController.h
//  appointments
//
//  Created by Erick Custodio on 11/17/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Instance;
@interface NewInstanceViewController : UIViewController <UITextViewDelegate>
@property (weak,nonatomic) IBOutlet UITextView *inputText;
@property (strong,nonatomic) Instance *myInstance;
//@property (weak,nonatomic) NSString *inputText;
@end
