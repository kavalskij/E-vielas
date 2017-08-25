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

    EvielasLibrary *searchLibrary = [[EvielasLibrary alloc] init];
    
    self.eVielasArray = [searchLibrary.library valueForKey:@"eViela"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.eVielasArray.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [self.eVielasArray objectAtIndex:indexPath.row];

    
    return cell;
}

#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
    if ([segue.identifier isEqualToString:@"showEvielasDetails"]) {
        
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        
       EvielasDetailViewController *detailViewController = [segue destinationViewController];
       
        detailViewController.eVielas = [[Evielas alloc] initWithIndex:path.row];
        
    }
}


@end
