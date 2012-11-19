//
//  ConcernViewController.m
//  appointments
//
//  Created by Ryan Langer on 15.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "ConcernViewController.h"
#import "NewConcernViewController.h"
#import "ListedConcernViewController.h"

@interface ConcernViewController ()

@end

@implementation ConcernViewController
@synthesize myTableView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.dataController = [[ConcernDataController alloc]init];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.myTableView.allowsMultipleSelectionDuringEditing = YES;
    current = [[NSMutableArray alloc]init];
    for (int i =0; i < [self.dataController.masterConcernsList count]; i++) {
        if ([[[self.dataController.masterConcernsList objectAtIndex:i] status] isEqualToString:@"Current"]) {
            [current addObject:[self.dataController.masterConcernsList objectAtIndex:i]];
        }
    }
    //myTableView.allowsMultipleSelectionDuringEditing = YES;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidAppear:(BOOL)animated {
    current = [[NSMutableArray alloc]init];
    for (int i =0; i < [self.dataController.masterConcernsList count]; i++) {
        if ([[[self.dataController.masterConcernsList objectAtIndex:i] status] isEqualToString:@"Current"]) {
            [current addObject:[self.dataController.masterConcernsList objectAtIndex:i]];
        }
    }
    [self.myTableView reloadData];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    if (selectedSegment == 0) {
        return [current count];
    } else { // if (selectedSegment == 1)
        return [self.dataController countOfList];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ConcernCell";
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    if (selectedSegment == 0){
        Concern *currentConcern = [current objectAtIndex:indexPath.row];
        [[cell textLabel] setText:currentConcern.name];
        [[cell detailTextLabel] setText:[formatter stringFromDate:(NSDate *)currentConcern.date]];
        [cell.textLabel setTextColor:[UIColor blackColor]];
        
    } else if (selectedSegment == 1) {
        Concern *concernAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
        [[cell textLabel] setText:concernAtIndex.name];
        [[cell detailTextLabel] setText:[formatter stringFromDate:(NSDate *)concernAtIndex.date]];
        if ([concernAtIndex.status isEqualToString:@"Addressed"]) {
            [cell.textLabel setTextColor:[UIColor redColor]];
        }
    }
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.myTableView isEditing]) {
        //selected = [[NSArray alloc]initWithArray:[self.myTableView indexPathsForSelectedRows]];
        NSLog(@"Selecting Rows!");
    } else {
        //        ListedConcernViewController *instanceViewController = [[ListedConcernViewController alloc]init];
        //        instanceViewController.passedConcern = [_dataController objectInListAtIndex:[self.myTableView indexPathForSelectedRow].row];
        [self performSegueWithIdentifier:@"ShowInstanceList" sender:self];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString:@"ShowInstanceList"]) {
        
        ListedConcernViewController *instanceViewController = [segue destinationViewController];
        instanceViewController.passedConcern = [_dataController objectInListAtIndex:[self.myTableView indexPathForSelectedRow].row];
        
    }
    
}

- (IBAction)cancel:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"CancelConcern"]) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

- (IBAction)done:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"ReturnNewConcern"]) {
        
        NewConcernViewController *addController = [segue sourceViewController];
        if (addController.myConcern) {
            [self.dataController addConcernWithConcern:addController.myConcern];
            [self.myTableView reloadData];
        }
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

#pragma mark - TableView Edit methods
// Override to support editing the table view.
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
    [super setEditing:editing animated:animated];
    if(editing)
    {
        [self.myTableView setEditing:YES animated:YES];
        
        self.tabBarController.tabBar.hidden = YES;
        //Make a toolbar and add it to the view
        UIToolbar *bottomToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 323, 320, 44)];
        bottomToolbar.tag = 1001;
        
        //Add buttons to the toolbar
        UIBarButtonItem *shareButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Share" style:UIBarButtonItemStyleBordered target:self action:@selector(share)];
        
        UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
        
        UIBarButtonItem *addressedButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Addressed" style:UIBarButtonItemStyleBordered target:self action:@selector(addressed)];
        
        UIBarButtonItem *flexibleSpace2 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
        
        UIBarButtonItem *deleteButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Delete" style:UIBarButtonItemStyleBordered target:self action:@selector(deleted)];
        
        
        //        UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash
        //                                                                                       target:self
        //                                                                                       action:@selector(deleteButtonPressed)];
        
        [self.view addSubview:bottomToolbar];
        //[self.navigationController.view addSubview:bottomToolbar];
        
        NSArray *items = [NSArray arrayWithObjects:shareButtonItem,flexibleSpace,addressedButtonItem,flexibleSpace2,deleteButtonItem, nil];
        [bottomToolbar setItems:items];
    }
    else
    {
        self.tabBarController.tabBar.hidden = NO;
        //Remove the toolbar
        
        for(UIView *view in self.view.subviews)
        {
            if(view.tag == 1001)
                [view removeFromSuperview];
        }
        [self.myTableView setEditing:NO animated:YES];
    }
}

- (void)share {
    NSLog(@"Share!");
}

- (void)addressed {
    NSLog(@"Addressed!");
    selected = [[NSArray alloc]initWithArray:[self.myTableView indexPathsForSelectedRows]];
    NSMutableArray *selectedConcerns = [[NSMutableArray alloc]init];
    for (int i =0; i < [selected count]; i++) {
        [selectedConcerns addObject:[self.dataController.masterConcernsList objectAtIndex:[[selected objectAtIndex:i]row]]];
    }
    
    for (Concern *c in selected) {
        if ([current containsObject:c]) {
            [current removeObject:c];
        }
    }
    for (int i = 0; i < [selected count]; i++) {
        [self.dataController setToAddressed:[self.dataController.masterConcernsList objectAtIndex:[[selected objectAtIndex:i]row]]];
        NSLog(@"%@",[[self.dataController.masterConcernsList objectAtIndex:i] status]);
    }
    
    [self.myTableView reloadData];
}

- (void)deleted {
    NSLog(@"Deleted!");
}

- (IBAction)segmentAction:(id)sender {
    //    for (int i =0; i < [self.dataController.masterConcernsList count]; i++) {
    //        if ([[[self.dataController.masterConcernsList objectAtIndex:i] status] isEqualToString:@"Current"]) {
    //            [current addObject:[self.dataController.masterConcernsList objectAtIndex:i]];
    //        }
    //    }
    UISegmentedControl *segmentSender = sender;
    selectedSegment = [segmentSender selectedSegmentIndex];
    [self.myTableView reloadData];
    
}
@end
