//
//  EvielasLibrary.m
//  E-vielas
//
//  Created by Aleksandrs Muravjovs on 22/05/2017.
//  Copyright © 2017 Aleksandrs Muravjovs. All rights reserved.
//

#import "EvielasLibrary.h"


NSString *const kEviela = @"eViela";
NSString *const kNosaukums = @"nosaukums";
NSString *const kIespPielietojums = @"iespPielietojums";
NSString *const kIespIedarbiba = @"iespIedarbība";

@implementation EvielasLibrary

- (instancetype)init
{
    self = [super init];
    if (self) {
        _library = @[@{kEviela : @"E100",
                           kNosaukums : @"Kurkumīns",
                           kIespPielietojums : @"Krāsviela",
                           kIespIedarbiba : @"Drošs"},
                         @{kEviela : @"E101",
                           kNosaukums : @"Riboflavīns",
                           kIespPielietojums : @"-",
                           kIespIedarbiba : @"Drošs"},
                         @{kEviela : @"E102",
                           kNosaukums : @"Tartrazīns",
                           kIespPielietojums : @"Konditorejas izstrādājumi ,atspirdzinošie dzērieni, augļu sulas, marinēti dārzeņi, marcipāns, sausās zupas, siera cepumi, saldā kukurūza. \n Lietošana citur: kosmētika, vilnas un zīda krāsa.",
                           kIespIedarbiba : @"Drošs"},
                         @{kEviela : @"E104",
                           kNosaukums : @"Hinolīna dzeltenais",
                           kIespPielietojums : @"Dzērieni, tehnoloģiski apstrādāti produkti. \n Lietošana citur: kosmētiskās krāsas, lūpu krāsa, ziepes, zobu pasta, matu kopšanas līdzekļi, odekolons.",
                           kIespIedarbiba : @"Vairākās valstīs (ASV, Japāna) aizliegts. Var izraisīt hiperaktivitāti, astmu, nātreni."},
                         ];
    }
    return self;
}
@end
