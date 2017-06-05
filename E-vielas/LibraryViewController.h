//
//  LibraryViewController.h
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 18/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EvielasDetailViewController.h"
#import "EvielasLibrary.h"

@interface LibraryViewController : UITableViewController

@property (strong, nonatomic) NSArray *eVielasArray;

@property (strong, nonatomic) EvielasLibrary *eVielasLibrary;

@end
