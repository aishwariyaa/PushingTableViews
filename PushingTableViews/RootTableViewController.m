//
//  RootTableViewController.m
//  PushingTableViews
//
//  Created by Lokesh Subramani on 4/26/14.
//  Copyright (c) 2014 CMPE277. All rights reserved.
//

#import "RootTableViewController.h"
#import "SecondTableViewController.h"

@interface RootTableViewController ()

@end

@implementation RootTableViewController
{
     NSArray *brands;
    
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
    brands = @[@"Honda",@"Toyota",@"Chevy"];
    
    if ((_brandName != nil) && (_modelName != nil) && (_className != nil)) {
        NSString *selection = [NSString stringWithFormat:@"%@ %@ %@", _brandName, _modelName, _className];
        _label.text = selection;
    }
    /*if( (_brandName!=NULL) && (_modelName!=NULL) && (_className!=NULL))
    {
    NSString *selection = [NSString stringWithFormat:@"%@ %@ %@", _brandName, _modelName, _className];
        if (selection!= NULL) {
            _selectionLabel.text = selection;
        }
    }*/
    
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

    return [brands count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableIdentifier = @"BrandCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    /*
    if(cell==nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifier];
        
    }
     */
    
    cell.textLabel.text=[brands objectAtIndex:indexPath.row];
    
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
    if([segue.identifier isEqualToString:@"carModel"])
    {
        NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
         SecondTableViewController *destViewController = segue.destinationViewController;
        destViewController.brandName =[brands objectAtIndex:indexpath.row];
        destViewController.title=destViewController.brandName;
    }
}


@end
