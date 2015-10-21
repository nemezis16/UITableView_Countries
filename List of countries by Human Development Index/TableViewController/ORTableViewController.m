//
//  ORTableViewController.m
//  List of countries by Human Development Index
//
//  Created by MacBook on 20.10.15.
//  Copyright (c) 2015 Osadchuk. All rights reserved.
//

#import "ORTableViewController.h"
#import "ORTableViewCell.h"
#import "ORCountryList.h"
#import "ORCountry.h"
#import "ORVTableViewHeader.h"
#import "ORDetailViewController.h"


@interface ORTableViewController ()
@property (nonatomic,strong) ORCountryList* countryList;

@end


@implementation ORTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.countryList=[[ORCountryList alloc]initWithStaticCountryList];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return [self.countryList.countryArray count];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [self.countryList.countryArray[section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    ORTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    ORCountry* country=self.countryList.countryArray[indexPath.section][indexPath.row];
    
        [cell.countryName setText:[country.countryNameLocalNameCapitalName objectForKey:@"Country"]];
        [cell.countryISO setText: [country.countryNameLocalNameCapitalName objectForKey:@"ISO"]];
        [cell.capitalName setText: [country.countryNameLocalNameCapitalName objectForKey:@"Capital"]];
        [cell.cellImage setImage:country.countryFlag];
 
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    ORCountry* country=self.countryList.countryArray[section][0];
    return [country.countryNameLocalNameCapitalName objectForKey:@"Continent"];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier]isEqualToString:@"ShowDetails"]) {
        ORDetailViewController* detailView=[segue destinationViewController];
        NSIndexPath *indexPath=[self.tableView indexPathForSelectedRow];
        ORCountry* country=self.countryList.countryArray[indexPath.section][indexPath.row];
        
        detailView.country=country;
    }
}



@end
