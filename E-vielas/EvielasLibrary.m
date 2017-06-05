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
                           kIespPielietojums : @"Konditorejas izstrādājumi ,atspirdzinošie dzērieni, augļu sulas, marinēti dārzeņi, marcipāns, sausās zupas, siera cepumi, saldā kukurūza. \nLietošana citur: kosmētika, vilnas un zīda krāsa.",
                           kIespIedarbiba : @"Drošs"},
                         @{kEviela : @"E104",
                           kNosaukums : @"Hinolīna dzeltenais",
                           kIespPielietojums : @"Dzērieni, tehnoloģiski apstrādāti produkti. \nLietošana citur: kosmētiskās krāsas, lūpu krāsa, ziepes, zobu pasta, matu kopšanas līdzekļi, odekolons.",
                           kIespIedarbiba : @"Vairākās valstīs (ASV, Japāna) aizliegts. Var izraisīt hiperaktivitāti, astmu, nātreni."},
                         @{kEviela : @"E110",
                           kNosaukums : @"Saulrieta dzeltenais FCF",
                           kIespPielietojums : @"Augļu sulas, sausās zupas, konservētas zivis, konditorejas izstrādājumi, dzērienu pulveris, marcipāns, graudu produkti. \nLietošana citur: kosmētika, matu skalošanas līdzekļi.",
                           kIespIedarbiba : @"Vemšana, siena drudzis, astma, nātrene. Kancerogēns."},
                        @{kEviela : @"E120",
                          kNosaukums : @"Karmīnskābe, košenils",
                          kIespPielietojums : @"Pīrāgu pildījums, gaļas izstrādājumi, jogurts, cepti produkti, daži alkoholiskie dzērieni, sarkano ābolu biezenis. \nLietošana citur: kosmētika, šampūns, skropstu tuša, sarkanas krāsas acu dekoratīvā kosmētika.",
                          kIespIedarbiba : @"Anafilakse, astma, nātrene."},
                        @{kEviela : @"E123",
                          kNosaukums : @"Amarants",
                          kIespPielietojums : @"Atspirdzinošie dzērieni, upeņu produkti, sausais kūku maisījums, želejas kristāli, graudu produkti. \nLietošana citur: vaigu sārtums un cita kosmētika, lūpu krāsa.",
                          kIespIedarbiba : @"Astma, nātrene, hiperaktivitāte. Kancerogēns. Var ietekmēt aknas, nieres. Aizliegts Krievija, Norvēģija, ASV,Austrija, Somija."},
                        @{kEviela : @"E124",
                          kNosaukums : @"Košenila sarkanais, kumačs 4R",
                          kIespPielietojums : @"Tomātu zupa, biskvītkūkas sausais maisījums, deserta garnējums, želejas kristāli.",
                          kIespIedarbiba : @"hiperaktivitāte, astma, siena drudzis."},
                        @{kEviela : @"E127",
                          kNosaukums : @"Eritrozīns",
                          kIespPielietojums : @"Cukuroti ķirši, konservēti sarkanie ķirši, cepumi, desu apvalki, konservēti augļu kokteiļi. \nLietošana citur: vaigu sārtums, zobu pasta, medikamenti.",
                          kIespIedarbiba : @"Hiperaktivitāte, astma, nātrene, var iespaidot aknas, vairogdziedzeri, kuņģi, vairošanās funkciju, kuņģi."},
                        @{kEviela : @"E128",
                          kNosaukums : @"Sarkanais 2G",
                          kIespPielietojums : @"Desas, hamburgeru gaļa, vārīti gaļas produkti.",
                          kIespIedarbiba : @"Kuņģis, astma, hiperaktivitāte, nātrene, angioedēma."},
                        @{kEviela : @"E129",
                          kNosaukums : @"Alūra sarkanais AC",
                          kIespPielietojums : @"Želejas kristāli, sausais kūku maisījums, šokolādes cepumi, graudu produkti. \nLietošana citur: lūpu krāsa, kosmētika, ārstniecības līdzekļi.",
                          kIespIedarbiba : @"Alerģijas, astma, hiperaktivitāte, nātrene."},
                        @{kEviela : @"E131",
                          kNosaukums : @"Patentzilais V",
                          kIespPielietojums : @"Olas skotu gaumē. \nLietošana citur: diagnostikas krāsa medicīnā.",
                          kIespIedarbiba : @"Kancerogēns. Hiperaktivitāte, astma, jāizvairās pret aspirīnu jūtīgiem cilvēkiem. gremošanas slimību pazīmes, anafilakse"},
                        @{kEviela : @"E132",
                          kNosaukums : @"Indigotīns",
                          kIespPielietojums : @"Cepumi, saldējums, konditorejas izstrādājumi, pudelēs pildīti atspirdzinošie dzērieni, saldumi, maizes izstrādājumi. \nLietošana citur: tabletes un kapsulas, matu skalošanas līdzekļi.",
                          kIespIedarbiba : @"Hiperaktivitāte, astma, nav ieteicams bērniem."},
                        @{kEviela : @"E133",
                          kNosaukums : @"Briljantzilais FCF",
                          kIespPielietojums : @"Konservēti zaļie zirnīši, deserti, piena produkti, graudaugu produkti, želantīns, atspirdzinošie dzērieni. \nLietošana citur: dezodorants, matu krāsa, zobu pasta, kosmētika.",
                          kIespIedarbiba : @"Hiperaktivitāte, astma, jāizvairās pret aspirīnu jūtīgiem cilvēkiem. Nav ieteicam bērniem."},
                        @{kEviela : @"E140",
                         kNosaukums : @"Hlorofili, hlorofilīni",
                         kIespPielietojums : @"-",
                         kIespIedarbiba : @"Lietošanai uzturā nekaitīgs."},
                        @{kEviela : @"E141",
                         kNosaukums : @"Hlorofilu un hlorofilīnu vara kompleksie savienojumi",
                         kIespPielietojums : @"-",
                         kIespIedarbiba : @"Uzskata par nekaitīgu"},
                        @{kEviela : @"E142",
                         kNosaukums : @"Zaļais S",
                         kIespPielietojums : @"Siera kūkas sausais maisījums, konservēti zirņi, piparmētru mērce.",
                         kIespIedarbiba : @"Akmeņogļu darvas krāsa. Astma, izsitumi uz ādas, bezmiegs, hiperaktivitāte."},
                        @{kEviela : @"E150a",
                         kNosaukums : @"Karamele",
                         kIespPielietojums : @"Kolas dzērieni, džemi, saldumi, šokolāde, tumšā maize, dzērieni.",
                         kIespIedarbiba : @"Gremošanas orgānu problēmas, ietekmē vairošanās funkcijas."},
                        @{kEviela : @"E150c",
                         kNosaukums : @"Amonija karamele",
                         kIespPielietojums : @"Cepumi, džemi, sojas mērce, šokolāde, tumšā maize, austeru mērce, marinēti dārzeņi.",
                         kIespIedarbiba : @"Hiperaktivitāte, var ietekmēt aknas,kuņģi. Testos uz dzīvniekiem izraisīja asins saindēšanos žurkām."},
                        @{kEviela : @"E150d",
                         kNosaukums : @"Amonija sulfīta karamele",
                         kIespPielietojums : @"Kolas dzērieni, porteris, konditorejas izstrādājumi, šokolāde.",
                         kIespIedarbiba : @"Hiperaktivitāte, pastiprināta zarnu darbība, žurkām izraisa asins saindēšanos. Aizdomīgs."},
                            ];
        
    }
    return self;
}


@end
