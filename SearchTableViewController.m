//
//  SearchTableViewController.m
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 07/06/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "SearchTableViewController.h"
#import "Evielas.h"
#import "EvielasLibrary.h"
#import "EvielasDetailViewController.h"


@interface SearchTableViewController () 



@end

@implementation SearchTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EvielasLibrary *searchLibrary = [[EvielasLibrary alloc] init];
    
    self.allItems = [searchLibrary.library valueForKey:@"eViela"];
    self.totalItelms = searchLibrary.library;
    
    self.sortedArray = [[NSMutableArray alloc] init];
    self.totalSortedArray = [[NSMutableArray alloc] init];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    if (self.sortedArray.count > 0) {
        return self.sortedArray.count;
    } else {
        return self.allItems.count;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    
    if (self.sortedArray.count > 0) {

        cell.textLabel.text = [self.sortedArray objectAtIndex:indexPath.row];;
    } else {
        cell.textLabel.text = [self.allItems objectAtIndex:indexPath.row];
    }
    
 
    return cell;
}


# pragma mark - UISearchBarDelegate

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    [searchBar setShowsCancelButton:YES animated:YES];
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    [searchBar setShowsCancelButton:NO animated:YES];
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF contains[cd] %@", searchText];
    NSPredicate *predicate2 = [NSPredicate predicateWithFormat:@"%K contains[cd] %@",kEviela, searchText];
    NSMutableArray *filteredArray = [NSMutableArray arrayWithArray:[self.allItems filteredArrayUsingPredicate:predicate]];
    NSMutableArray *totalFilteredArray = [NSMutableArray arrayWithArray:[self.totalItelms filteredArrayUsingPredicate:predicate2]];
    self.sortedArray = filteredArray;
    self.totalSortedArray = totalFilteredArray;


    [self.tableView reloadData];
  
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showEvielasDetails"]) {
            
            EvielasDetailViewController *detailViewController = [segue destinationViewController];
            NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        
        
        if (self.sortedArray.count == 0) {
            detailViewController.eVielas = [[Evielas alloc] initWithIndex:path.row];
            
        } else {
            
            NSString * stringName = self.sortedArray[path.row];
            
            NSArray * arrayNames = [[EvielasLibrary alloc] init].library;
            
            NSPredicate * predicate = [NSPredicate predicateWithFormat:@"SELF.eViela contains[cd] %@",stringName];
            
            NSArray * arraySelectedName  = [arrayNames filteredArrayUsingPredicate:predicate];
            
            
            if (arraySelectedName.count>0) {
                
                NSDictionary* eVielasDictionary  = arraySelectedName[0];
                
                Evielas * objEvielas = [[Evielas alloc] init];
                objEvielas.eVielasNumurs = [eVielasDictionary objectForKey:kEviela];
                objEvielas.eVielasNosaukums = [eVielasDictionary objectForKey:kNosaukums];
                objEvielas.eVielasIespPielietojums = [eVielasDictionary objectForKey:kIespPielietojums];
                objEvielas.eVielasIespIedarbiba= [eVielasDictionary objectForKey:kIespIedarbiba];
                detailViewController.eVielas = objEvielas;
            }
        }
    }
}

@end
