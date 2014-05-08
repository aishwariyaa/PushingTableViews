//
//  ThirdTableViewController.m
//  PushingTableViews
//
//  Created by Lokesh Subramani on 4/26/14.
//  Copyright (c) 2014 CMPE277. All rights reserved.
//

#import "ThirdTableViewController.h"
#import "RootTableViewController.h"
@interface ThirdTableViewController ()

@end

@implementation ThirdTableViewController
{
    NSArray *Civic;
    NSArray *City;
    NSArray *Corolla;
    NSArray *Camry;
    NSArray *Impala;
    NSArray *Cruze;
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
    Civic = @[@"X5",@"X7",@"X8"];
    City = @[@"LX",@"DX"];
    Corolla = @[@"Pre",@"PP",@"PL"];
    Camry = @[@"Deluxe",@"SuperD",@"Basic"];
    Impala = @[@"GD4",@"GD5",@"GDX"];
    Cruze = @[@"CX3",@"CX7",@"CXD"];
    
    
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
    if ([_modelName isEqualToString:@"Civic"]) {
        return [Civic count];
    }
    else if ([_modelName isEqualToString:@"City"]) {
        return [City count];
    }
    else if ([_modelName isEqualToString:@"Corolla"]) {
        return [Corolla count];
    }else if ([_modelName isEqualToString:@"Camry"]) {
        return [Camry count];
    }else if ([_modelName isEqualToString:@"Impala"]) {
        return [Impala count];
    }else if ([_modelName isEqualToString:@"Cruze"]) {
        return [Cruze count];
    }

    
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableIdentifier = @"ClassCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableIdentifier];
    /*
     if(cell==nil)
     {
     cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:tableIdentifier];
     
     }
     */
    
    if ([_modelName isEqualToString:@"Civic"]) {
        cell.textLabel.text = [Civic objectAtIndex:indexPath.row];
    }
    else if ([_modelName isEqualToString:@"City"]) {
        cell.textLabel.text = [City objectAtIndex:indexPath.row];
    }
    else if ([_modelName isEqualToString:@"Corolla"]) {
        cell.textLabel.text = [Corolla objectAtIndex:indexPath.row];
    }else if ([_modelName isEqualToString:@"Camry"]) {
       cell.textLabel.text = [Camry objectAtIndex:indexPath.row];
    }else if ([_modelName isEqualToString:@"Impala"]) {
        cell.textLabel.text = [Impala objectAtIndex:indexPath.row];
    }else if ([_modelName isEqualToString:@"Cruze"]) {
        cell.textLabel.text = [Cruze objectAtIndex:indexPath.row];
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
    if([segue.identifier isEqualToString:@"finalTrans"])
    {
        NSIndexPath *indexpath = [self.tableView indexPathForSelectedRow];
        RootTableViewController *destViewController = segue.destinationViewController;
        destViewController.brandName = _brandName;
        destViewController.modelName = _modelName;
        
        if ([_modelName isEqualToString:@"Civic"]) {
            destViewController.className = [Civic objectAtIndex:indexpath.row];
           
        } else if ([_modelName isEqualToString:@"City"]) {
            destViewController.className = [City objectAtIndex:indexpath.row];
            
        }  else if ([_modelName isEqualToString:@"Corolla"]) {
            destViewController.className = [Corolla objectAtIndex:indexpath.row];
            
        } else if ([_modelName isEqualToString:@"Camry"]) {
            destViewController.className = [Camry objectAtIndex:indexpath.row];
            
        } else if ([_modelName isEqualToString:@"Impala"]) {
            destViewController.className = [Impala objectAtIndex:indexpath.row];
            
        } else if ([_modelName isEqualToString:@"Cruze"]) {
            destViewController.className = [Cruze objectAtIndex:indexpath.row];
            
        }
       
    }
}


@end
