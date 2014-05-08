//
//  SecondTableViewController.m
//  PushingTableViews
//
//  Created by Lokesh Subramani on 4/26/14.
//  Copyright (c) 2014 CMPE277. All rights reserved.
//

#import "SecondTableViewController.h"
#import "ThirdTableViewController.h"
@interface SecondTableViewController ()

@end

@implementation SecondTableViewController
{
    NSArray *Honda;
    NSArray *Toyota;
    NSArray *Chevy;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    Honda =@[@"Civic",@"City"];
    Toyota =@[@"Corolla",@"Camry"];
    Chevy =@[@"Impala",@"Cruze"];
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

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([_brandName isEqualToString:@"Honda"]) {
        return [Honda count];
    }
    else if ([_brandName isEqualToString:@"Toyota"]) {
        return [Toyota count];
    }
    else if ([_brandName isEqualToString:@"Chevy"]) {
        return [Chevy count];
    }

    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableIdentifier = @"ModelCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
   /*
    if(cell==nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:tableIdentifier];
        
    }
    */
    
    if ([_brandName isEqualToString:@"Honda"]) {
        cell.textLabel.text = [Honda objectAtIndex:indexPath.row];
    }
    else if ([_brandName isEqualToString:@"Toyota"]) {
        cell.textLabel.text = [Toyota objectAtIndex:indexPath.row];
    }
    else if ([_brandName isEqualToString:@"Chevy"]) {
        cell.textLabel.text = [Chevy objectAtIndex:indexPath.row];
    }

    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"carClass"])
    {
        NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
        ThirdTableViewController *destViewController = segue.destinationViewController;
        destViewController.brandName = _brandName;
        if ([_brandName isEqualToString:@"Honda"]) {
            destViewController.modelName = [Honda objectAtIndex:indexpath.row];
            
        } else if([_brandName isEqualToString:@"Toyota"]){
            destViewController.modelName = [Toyota objectAtIndex:indexpath.row];
        }
        else if ([_brandName isEqualToString:@"Chevy"]){
        destViewController.modelName =[Chevy objectAtIndex:indexpath.row];
        }
        destViewController.title=destViewController.modelName;
    }
}


@end
