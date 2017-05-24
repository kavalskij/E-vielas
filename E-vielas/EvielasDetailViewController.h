//
//  EvielasDetailViewController.h
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 22/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Evielas;

@interface EvielasDetailViewController : UIViewController

@property (strong, nonatomic) Evielas *eVielas;
@property (weak, nonatomic) IBOutlet UILabel *eVielasNumurs;
@property (weak, nonatomic) IBOutlet UILabel *eVielasNosaukums;
@property (weak, nonatomic) IBOutlet UILabel *eVielasIespPielietojums;
@property (weak, nonatomic) IBOutlet UILabel *eVielasIespIedarbiba;

@end
