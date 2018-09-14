//
//  RSSTableViewController.h
//  York Community High School
//
//  Created by Domenic Conversa on 7/19/16.
//  Copyright © 2016 Domenic Conversa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSSTableViewController : UITableViewController <NSMachPortDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
