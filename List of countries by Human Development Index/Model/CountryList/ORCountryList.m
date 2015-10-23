//
//  ORCountryList.m
//  List of countries by Human Development Index
//
//  Created by MacBook on 20.10.15.
//  Copyright (c) 2015 Osadchuk. All rights reserved.
//

#import "ORCountryList.h"


NSString * const ORCountryListCountryKey=@"Country";
NSString * const ORCountryListCapitalKey=@"ISO";
NSString * const ORCountryListISOKey=@"ISO";
NSString * const ORCountryListContinentKey=@"Continent";

@implementation ORCountryList
@synthesize countryArray=_countryArray;

-(instancetype)initWithStaticCountryList{
    self=[super init];
    if (self){
        
        _countryArray=[[NSMutableArray alloc]init];
        NSMutableArray* northAmericaContinent=[NSMutableArray new];
        NSMutableArray* europeContinent=[NSMutableArray new];
        NSMutableArray* australiaContinent=[NSMutableArray new];
        NSMutableArray* asiaContinent=[NSMutableArray new];
        
        NSDictionary* norway=[NSDictionary dictionaryWithObjectsAndKeys:
                            @"Norway",@"Country",
                          @"NO",@"ISO",
                          @"Oslo",@"Capital",
                          @"Europe",@"Continent",nil];
        [europeContinent addObject:[[ORCountry alloc]initWithCountry:norway
                                                            flag:[UIImage imageNamed:@"norway.png"]
                                                           details:@"Norway has a total area of 385,252 square kilometres (148,747 sq mi) and a population of 5,165,800 people . The country shares a long eastern border with Sweden (1,619 km or 1,006 mi long)."]];
        
        
        NSDictionary* australia=[NSDictionary dictionaryWithObjectsAndKeys:
                                 @"Australia",@"Country",
                          @"AU",@"ISO",
                          @"Canberra",@"Capital",
                                 @"Australia",@"Continent",nil ];
        [australiaContinent addObject:[[ORCountry alloc]initWithCountry:australia
                                                              flag:[UIImage imageNamed:@"australia.png"]
                                                           details:@"Australia is an Oceanian country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands. It is the world's sixth-largest country by total area. Neighbouring countries include Papua New Guinea, Indonesia and East Timor to the north; the Solomon Islands and Vanuatu to the north-east; and New Zealand to the south-east."]];
        
        NSDictionary* switzerland=[NSDictionary dictionaryWithObjectsAndKeys:
                                  @"Switzerland",@"Country",
                          @"CH",@"ISO",
                          @"Bern",@"Capital",
                           @"Europe",@"Continent", nil];
        [europeContinent addObject:[[ORCountry alloc]initWithCountry:switzerland
                                                              flag:[UIImage imageNamed:@"switzerland.png"]
                                                           details:@"While still named the \"Swiss Confederation\" for historical reasons, modern Switzerland is a federal directorial republic consisting of 26 cantons, with Bern as the seat of the federal authorities, called Bundesstadt (\"federal city\")."]];
        
        NSDictionary* netherlands=[NSDictionary dictionaryWithObjectsAndKeys:
                                   @"Netherlands",@"Country",
                               @"NL",@"ISO",
                               @"Amsterdam",@"Capital",
                               @"Europe",@"Continent",nil];
        [europeContinent addObject:[[ORCountry alloc]initWithCountry:netherlands
                                                              flag:[UIImage imageNamed:@"netherlands.png"]
                                                           details:@"Netherlands is the main \"constituent country\" (Dutch: land) of the Kingdom of the Netherlands. It is a small, densely populated country located in Western Europe with three island territories in the Caribbean. The European part of the Netherlands borders Germany to the east, Belgium to the south, and the North Sea to the northwest, sharing maritime borders with Belgium, the United Kingdom and Germany."]];
        NSDictionary* usa=[NSDictionary dictionaryWithObjectsAndKeys:
                           @"United States of America",@"Country",
                              @"US",@"ISO",
                               @"Washington, D.C.",@"Capital",
                       @"North America",@"Continent",nil];
        [northAmericaContinent addObject:[[ORCountry alloc]initWithCountry:usa
                                                              flag:[UIImage imageNamed:@"usa.png"]
                                                           details:@"United States of America is a federal republic composed of 50 states, a federal district, five major territories and various possessions. The 48 contiguous states and Washington, D.C., are in central North America between Canada and Mexico. The state of Alaska is in the northwestern part of North America and the state of Hawaii is an archipelago in the mid-Pacific."]];
   
        NSDictionary* newZeland=[NSDictionary dictionaryWithObjectsAndKeys:
                                 @"New Zeland",@"Country",
                       @"NZ",@"ISO",
                       @"Wellington",@"Capital",
                             @"Australia",@"Continent",nil];
        [australiaContinent addObject:[[ORCountry alloc]initWithCountry:newZeland
                                                              flag:[UIImage imageNamed:@"newzeland.png"]
                                                           details:@"New Zeland  is an island country in the southwestern Pacific Ocean. The country geographically comprises two main landmasses – that of the North Island, or Te Ika-a-Māui, and the South Island, or Te Waipounamu – and numerous smaller islands. New Zealand is situated some 1,500 kilometres (900 mi) east of Australia across the Tasman Sea and roughly 1,000 kilometres (600 mi) south of the Pacific island areas of New Caledonia, Fiji, and Tonga."]];
        
        NSDictionary* canada=[NSDictionary dictionaryWithObjectsAndKeys:
                              @"Canada",@"Country",
                             @"CA",@"ISO",
                             @"Ottawa",@"Capital",
                          @"North America",@"Continent",nil];
        [northAmericaContinent addObject:[[ORCountry alloc]initWithCountry:canada
                                                              flag:[UIImage imageNamed:@"canada.png"]
                                                           details:@"Canada is a country, consisting of ten provinces and three territories, in the northern part of the continent of North America. It extends from the Atlantic to the Pacific and northward into the Arctic Ocean, covering 9.98 million square kilometres (3.85 million square miles) in total, making it the world's second-largest country by total area and the fourth-largest country by land area. Canada's common border with the United States forms the world's longest land border."]];
        
        NSDictionary* singapore=[NSDictionary dictionaryWithObjectsAndKeys:
                                 @"Singapore",@"Country",
                               @"SG",@"ISO",
                               @"Singapore",@"Capital",
                             @"Asia",@"Continent",nil];
        [asiaContinent addObject:[[ORCountry alloc]initWithCountry:singapore
                                                              flag:[UIImage imageNamed:@"singapore.png"]
                                                           details:@"Singapore is a leading global city-state and island country in Southeast Asia. It lies at the southernmost tip of continental Asia, one degree (137 km; 85 mi) north of the equator, and is separated from Peninsular Malaysia by the Straits of Johor to the north and from Indonesia's Riau Islands by the Singapore Strait to the south. Singapore's territory consists of the diamond-shaped main island (commonly referred to as Singapore Island and Pulau Ujong in Malay) and more than 60 significantly smaller islets."]];
        
        NSDictionary* denmark=[NSDictionary dictionaryWithObjectsAndKeys:
                              @"Denmark",@"Country",
                             @"DK",@"ISO",
                             @"Copenhagen",@"Capital",
                           @"Europe",@"Continent",nil];
        [europeContinent addObject:[[ORCountry alloc]initWithCountry:denmark
                                                              flag:[UIImage imageNamed:@"denmark.png"]
                                                           details:@"Denmark is a southernmost of the Nordic countries, it is southwest of Sweden and south of Norway, and bordered to the south by Germany. Denmark is part of Scandinavia, together with Sweden and Norway. The Kingdom of Denmark[N 10] is a sovereign state that comprises Denmark and two autonomous constituent countries in the North Atlantic Ocean: the Faroe Islands and Greenland. Denmark proper has an area of 43,094 square kilometres (16,639 sq mi),[9] and a population of 5,678,348."]];
        
        NSDictionary* ireland=[NSDictionary dictionaryWithObjectsAndKeys:
                               @"Ireland",@"Country",
                           @"IE",@"ISO",
                           @"Denmark",@"Capital",
                           @"Europe",@"Continent",nil];
        [europeContinent addObject:[[ORCountry alloc]initWithCountry:ireland
                                                              flag:[UIImage imageNamed:@"ireland.png"]
                                                           details:@"Ireland is a sovereign state in north-western Europe occupying about five-sixths of the island of Ireland. The capital and largest city is Dublin, located in the eastern part of the island, whose metropolitan area is home to around a third of the country's 4.6 million inhabitants. The state shares its only land border with Northern Ireland, a part of the United Kingdom. It is otherwise surrounded by the Atlantic Ocean, with the Celtic Sea to the south, Saint George's Channel to the south-east and the Irish Sea to the east. "]];
        
        
        NSDictionary* iceland=[NSDictionary dictionaryWithObjectsAndKeys:
                               @"Iceland",@"Country",
                           @"IS",@"ISO",
                           @"Reykjavík",@"Capital",
                          @"Europe",@"Continent", nil];
        [europeContinent addObject:[[ORCountry alloc]initWithCountry:iceland
                                                              flag:[UIImage imageNamed:@"iceland.png"]
                                                           details:@"Iceland is a Nordic island country between the North Atlantic and the Arctic Ocean. It has a population of 329,100 and an area of 103,000 km2 (40,000 sq mi), making it the most sparsely populated country in Europe.[11] The capital and largest city is Reykjavík. Reykjavík and the surrounding areas in the southwest of the country are home to over two-thirds of the population. Iceland is volcanically and geologically active."]];
        
        
        NSDictionary* uk=[NSDictionary dictionaryWithObjectsAndKeys:
                        @"United Kingdom", @"Country",
                           @"GB",@"ISO",
                           @"London",@"Capital",
                     @"Europe", @"Continent",nil];
        [europeContinent addObject:[[ORCountry alloc]initWithCountry:uk
                                                              flag:[UIImage imageNamed:@"uk.png"]
                                                           details:@"United Kingdom is a sovereign state in Europe. Lying off the north-western coast of the European mainland, the country includes the island of Great Britain—a term also applied loosely to refer to the whole country—the north-eastern part of the island of Ireland and many smaller islands.[8] Northern Ireland is the only part of the UK that shares a land border with another state, the Republic of Ireland."]];
        
        [_countryArray addObject:northAmericaContinent];
        [_countryArray addObject:europeContinent];
        [_countryArray addObject:asiaContinent];
        [_countryArray addObject:australiaContinent];
    }
    return self;
}

@end
