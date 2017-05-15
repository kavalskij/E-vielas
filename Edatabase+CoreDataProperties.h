//
//  Edatabase+CoreDataProperties.h
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 15/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "Edatabase+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Edatabase (CoreDataProperties)

+ (NSFetchRequest<Edatabase *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *eViela;
@property (nullable, nonatomic, copy) NSString *nosaukums;
@property (nullable, nonatomic, copy) NSString *iespPielietojums;
@property (nullable, nonatomic, copy) NSString *iespIedarbiba;

@end

NS_ASSUME_NONNULL_END
