//
//  LibraryViewController.m
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 18/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "LibraryViewController.h"
#import "Evielas.h"
#import "EvielasLibrary.h"

@interface LibraryViewController ()



@end


@implementation LibraryViewController

- (void)viewDidLoad {
    [super viewDidLoad];

   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    EvielasLibrary *count = [[EvielasLibrary alloc] init];
    NSUInteger countEvielas = [count.library count];
    
    return countEvielas;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Evielas *eVielas = [[Evielas alloc] initWithIndex:indexPath.row];
    cell.textLabel.text = eVielas.eVielasNumurs;

    
    return cell;
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
