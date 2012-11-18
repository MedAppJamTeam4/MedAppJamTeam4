//
//  ListedConcernViewController.m
//  appointments
//
//  Created by Ryan Langer on 15.11.12.
//  Copyright (c) 2012 Team4. All rights reserved.
//

#import "ListedConcernViewController.h"
#import "ConcernViewController.h"
#import "NewInstanceViewController.h"

@interface ListedConcernViewController ()

@end

@implementation ListedConcernViewController

//- (id)initWithStyle:(UITableViewStyle)style
//{
//    self = [super initWithStyle:style];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.dataController = [[InstanceDataController alloc]init];
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    //return [_dataController countOfMasterInstanceList];
    return [_passedConcern.instances count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"InstanceCell";
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
//    Instance *instanceAtIndex = [_dataController objectInMasterInstanceListAtIndex:indexPath.row];
    Instance *instanceAtIndex = [_passedConcern.instances objectAtIndex:indexPath.row];
    [cell.textLabel setText:[formatter stringFromDate:(NSDate *)instanceAtIndex.date]];
    
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
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
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

- (IBAction)cancel:(UIStoryboardSegue *)segue {
    if ([[segue identifier]isEqualToString:@"CancelInstance"]) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

- (IBAction)done:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"ReturnNewInstance"]) {
        
        NewInstanceViewController *addController = [segue sourceViewController];
        if (addController.myInstance) {
            //[self.dataController addMasterInstanceListObject:addController.myInstance];
            if ([_passedConcern.instances count] == 0) {
                NSMutableArray *newArray = [NSMutableArray arrayWithObject:addController.myInstance];
                _passedConcern.instances = [[NSMutableArray alloc]initWithArray:newArray];
            } else {
                NSMutableArray *newArray = [[NSMutableArray alloc]initWithArray:_passedConcern.instances];
                [newArray addObject:addController.myInstance];
                _passedConcern.instances = [[NSMutableArray alloc]initWithArray:newArray];                  
            }
//            NSLog(@"%@",[[_passedConcern.instances objectAtIndex:0] date] );
//            NSLog(@"%@",[[_passedConcern.instances objectAtIndex:0] descriptionText] );
            [[self tableView] reloadData];
        }
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

@end
