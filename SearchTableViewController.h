//
//  SearchTableViewController.h
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 07/06/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EvielasLibrary.h"


@interface SearchTableViewController : UITableViewController <UISearchBarDelegate, UITextFieldDelegate>


@property (nonatomic, strong) NSArray *allItems;
@property (nonatomic,strong) NSMutableArray *sortedArray;
@property (nonatomic, strong) EvielasLibrary *library;
@property (nonatomic, strong) NSMutableArray *globalEvielasArray;
@property (nonatomic, strong) NSMutableDictionary *eVielasDictionary;
@property (nonatomic, strong) NSArray *totalItelms;
@property (nonatomic, strong) NSMutableArray *totalSortedArray;


@property (weak, nonatomic) IBOutlet UISearchBar *searchField;




@end
