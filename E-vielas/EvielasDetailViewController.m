//
//  EvielasDetailViewController.m
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 22/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "EvielasDetailViewController.h"
#import "Evielas.h"

@interface EvielasDetailViewController ()

@end

@implementation EvielasDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.eVielas) {
        self.eVielasNumurs.text = self.eVielas.eVielasNosaukums;
        self.eVielasNosaukums.text = self.eVielas.eVielasNosaukums;
        self.eVielasIespPielietojums.text = self.eVielas.eVielasIespPielietojums;
        self.eVielasIespIedarbiba.text = self.eVielas.eVielasIespIedarbiba;
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
