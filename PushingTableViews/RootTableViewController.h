//
//  RootTableViewController.h
//  PushingTableViews
//
//  Created by Lokesh Subramani on 4/26/14.
//  Copyright (c) 2014 CMPE277. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootTableViewController : UITableViewController

@property (nonatomic,strong)NSString *brandName;
@property(nonatomic,strong)NSString *modelName;
@property(nonatomic,strong)NSString *className;
@property (strong, nonatomic) IBOutlet UILabel *label;
@end
