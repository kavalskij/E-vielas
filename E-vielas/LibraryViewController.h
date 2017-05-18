//
//  LibraryViewController.h
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 18/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LibraryViewController : UITableViewController

@property (nonatomic, strong) NSDictionary *evielaslibrary;
@property (nonatomic, strong) NSArray *evielas;
@property (nonatomic, strong) NSArray *nosaukumi;
@property (nonatomic, strong) NSArray *iespPielietojums;
@property (nonatomic, strong) NSArray *iespIedarbiba;


@end
