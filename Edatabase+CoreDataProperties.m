//
//  Edatabase+CoreDataProperties.m
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 15/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "Edatabase+CoreDataProperties.h"

@implementation Edatabase (CoreDataProperties)

+ (NSFetchRequest<Edatabase *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Edatabase"];
}

@dynamic eViela;
@dynamic nosaukums;
@dynamic iespPielietojums;
@dynamic iespIedarbiba;

@end
