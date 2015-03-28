//
//  TableViewController.m
//  taskApp
//
//  Created by Ahmed Mohamed Fareed on 3/26/15.
//  Copyright (c) 2015 Ahmed Mohamed Fareed. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
{
    NSMutableArray* dataArray;
    
}

@end

@implementation TableViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    dataArray = [[NSMutableArray alloc] init];
    [dataArray addObject:[Person initWithName:@"Joan Smith" biography:@"Joan Smith is the Chief Innovation Officer for PeopleCAD® and a frequent speaker at industry events. For the past four  years, Joan has written a monthly magazine column called “Industry News”. She started using PeopleCAD® software with Release 1.0, almost 20 years ago. She also taught at the university level for several years. Her latest book is entitled PeopleCAD® Demystified Joan Smith is the Chief Innovation Officer for PeopleCAD® and a frequent speaker at industry events. For the past four  years, Joan has written a monthly magazine column called “Industry News”. She started using PeopleCAD® software with Release 1.0, almost 20 years ago. She also taught at the university level for several years. Her latest book is entitled PeopleCAD® Demystified.."]];
    [dataArray addObject:[Person initWithName:@"Dr. Jones" biography:@"Dr. Jones heads up the post graduate program at the Health Sciences Hospital of Alberta. His numerous professional publications focus on his research and clinical interests in the psycho-social aspects of hospice care. His current research focuses on the tools of orthomolecular "]];
    
    [dataArray addObject:[Person initWithName:@"Charles Granger" biography:@"Charles Granger, CPA founded the Financial Planner SBO systems to track hedge funds for the bank. This system enabled the bank to monitor and project profits and ultimately offered a prudent way of multiplying the banks overall capital."]];  
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = UITableViewAutomaticDimension;    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [dataArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PersonCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];
    [self configureCell:cell withIndexPath:indexPath];
    
    return cell;
}

-(void) configureCell:(PersonCell*)cell withIndexPath:(NSIndexPath*)indexPath
{
    cell.subtitle.lineBreakMode = NSLineBreakByWordWrapping;
    cell.subtitle.numberOfLines = 0;

    cell.name.text = [(Person*)[dataArray objectAtIndex:(int)[indexPath row]] name];
    cell.subtitle.text = [(Person*)[dataArray objectAtIndex:(int)[indexPath row]] biography];
    
}

@end
