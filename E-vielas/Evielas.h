//
//  Evielas.h
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 22/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Evielas : NSObject

@property (strong, nonatomic) NSString *eVielasNumurs;
@property (strong, nonatomic) NSString *eVielasNosaukums;
@property (strong, nonatomic) NSString *eVielasIespPielietojums;
@property (strong, nonatomic) NSString *eVielasIespIedarbiba;

- (instancetype) initWithIndex:(NSUInteger) index;

@end
