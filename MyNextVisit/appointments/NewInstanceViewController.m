//
//  NewInstanceViewController.m
//  appointments
//
//  Created by Erick Custodio on 11/17/12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "NewInstanceViewController.h"
#import "Instance.h"

@interface NewInstanceViewController ()

@end

@implementation NewInstanceViewController

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
//    CGRect textViewFrame = CGRectMake(20.0f, 20.0f, 280.0f, 124.0f);
//    UITextView *textView = [[UITextView alloc] initWithFrame:textViewFrame];
//    textView.returnKeyType = UIReturnKeyDone;
//    textView.delegate = self;
//    [self.view addSubview:textView];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier]isEqualToString:@"ReturnNewInstance"]) {
        if ([_inputText.text length]) {
            Instance *instance;
            NSDate *today = [NSDate date];
            instance = [[Instance alloc]initWithDate:today description:_inputText.text image:nil];
            _myInstance = instance;
        }
    }
}


#pragma mark - UITextViewDelegate Methods

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    return YES;
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    [textView resignFirstResponder];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    /*--
     * This method is called just before text in the textView is displayed
     * This is a good place to disallow certain characters
     * Limit textView to 140 characters
     * Resign keypad if done button pressed comparing the incoming text against the newlineCharacterSet
     * Return YES to update the textView otherwise return NO
     --*/
    
    NSCharacterSet *doneButtonCharacterSet = [NSCharacterSet newlineCharacterSet];
    NSRange replacementTextRange = [text rangeOfCharacterFromSet:doneButtonCharacterSet];
    NSUInteger location = replacementTextRange.location;
    
    if (textView.text.length + text.length > 140) { //140 characters are in the textView
        if (location != NSNotFound) { //Did not find any newline characters
            [textView resignFirstResponder];
        }
        return NO;
    }
    else if (location != NSNotFound) { //Did not find any newLine character
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

#pragma mark - UIResponder Override

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    for (UITextView *textView in _view.subviews) {
//        if ([textView isFirstResponder]) {
//            [textView resignFirstResponder];
//        }
//    }
//    [_view endEditing:YES];
//    [super touchesBegan:touches withEvent:event];
//}
@end
