//
//  Evielas.m
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 22/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "Evielas.h"
#import "EvielasLibrary.h"

@implementation Evielas

- (instancetype) initWithIndex:(NSUInteger) index {
    
    self = [super init];
    if (self) {
        EvielasLibrary *eVielasLibrary = [[EvielasLibrary alloc] init];
        NSArray *library = eVielasLibrary.library;
        
        NSDictionary *eVielasDictionary = library[index];
        
        _eVielasNumurs = [eVielasDictionary objectForKey:kEviela];
        _eVielasNosaukums = [eVielasDictionary objectForKey:kNosaukums];
        _eVielasIespPielietojums = [eVielasDictionary objectForKey:kIespPielietojums];
        _eVielasIespIedarbiba= [eVielasDictionary objectForKey:kIespIedarbiba];
        
    }
    return self;
}

@end
