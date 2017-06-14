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
    
    self.sortedArray = [[NSMutableArray alloc] init];
    
    
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
    
    [self performSegueWithIdentifier:@"showEvielasDetails" sender:indexPath];
 
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
    NSMutableArray *filteredArray = [NSMutableArray arrayWithArray:[self.allItems filteredArrayUsingPredicate:predicate]];
    self.sortedArray = filteredArray;
    
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

            NSIndexPath *path = [self.tableView indexPathForSelectedRow];
            
            EvielasDetailViewController *detailViewController = [segue destinationViewController];
            
            detailViewController.eVielas = [[Evielas alloc] initWithIndex:path.row];
        
        
        }
}

@end
