//
//  Evielas.m
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 22/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "Evielas.h"
#import "EvielasLibrary.h"
#import "SearchTableViewController.h"

@implementation Evielas

- (instancetype) initWithIndex:(NSUInteger) index {
    
    self = [super init];
    if (self) {
        EvielasLibrary *eVielasLibrary = [[EvielasLibrary alloc] init];

        _library = eVielasLibrary.library;
        
        NSDictionary *eVielasDictionary2 = _library[index];
        _eVielasNumurs = [eVielasDictionary2 objectForKey:kEviela];
        _eVielasNosaukums = [eVielasDictionary2 objectForKey:kNosaukums];
        _eVielasIespPielietojums = [eVielasDictionary2 objectForKey:kIespPielietojums];
        _eVielasIespIedarbiba= [eVielasDictionary2 objectForKey:kIespIedarbiba];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.library                        = @[];
        self.filteredLibrary                = [@[] mutableCopy];
        
        self.eVielasNumurs                  = @"";
        self.eVielasNosaukums               = @"";
        self.eVielasIespPielietojums        = @"";
        self.eVielasIespIedarbiba           = @"";
    }
    return self;
}

@end
