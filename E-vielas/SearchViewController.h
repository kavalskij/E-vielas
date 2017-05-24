//
//  SearchViewController.h
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 24/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

- (BOOL)textFieldShouldClear:(UITextField *)textField;

@end
