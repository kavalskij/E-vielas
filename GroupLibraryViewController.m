//
//  GroupLibraryViewController.m
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 30/06/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "GroupLibraryViewController.h"
#import "Evielas.h"
#import "EvielasLibrary.h"

@interface GroupLibraryViewController ()

@end

@implementation GroupLibraryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView sizeToFit];
    
    
    
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

    return 9;
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
   // cell.textLabel.text = [self.eVielasArray objectAtIndex:indexPath.row];
    
    
    return cell;
}
 */


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
