//
//  ViewController.m
//  Project1
//
//  Created by Jennifer Johnson on 6/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"

@implementation ViewController
@synthesize games;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSDictionary *row1 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Super Mario Brothers", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row2 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Legend of Zelda", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row3 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Sonic the Hedgehog", @"Name", @"Sega Genisis", @"System", nil];
    NSDictionary *row4 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Final Fantasy", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row5 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Kirby", @"Name", @"Nintendo", @"System", nil];
    
    self.games = [[NSArray alloc] initWithObjects:row1, row2, row3, row4, row5, nil];
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{

    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


////////////////////////////////////

// Number of sections
- (NSInteger)numberofSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

//Number of rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return games.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellTableIdentifier = @"CellTableIdentifier";
    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib = [UINib nibWithNibName:@"CustomTableCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
        nibsRegistered = YES;
    }
    
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:
                                 CellTableIdentifier];
    
    NSUInteger row = [indexPath row];
    NSDictionary *rowData = [self.games objectAtIndex:row];
    
    cell.name = [rowData objectForKey:@"Name"];
    cell.system = [rowData objectForKey:@"System"];
    
    return cell;
}


// Editing Cells
/*
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView2 commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"Delete row %d", indexPath.row);
        [stringArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}
 
*/


// Each cell
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) 
    {
        //cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
       
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"CustomCellView" owner:nil options:nil];
        
        for (UIView *view in views) 
        {
            if([view isKindOfClass:[CustomTableCell class]])
            {
                cell = (CustomTableCell*)view;
            }
        }
        
        
    }
    
    //cell.textLabel.text = (NSString*)[stringArray objectAtIndex:indexPath.row];

    return cell;
}
*/
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%d name=%@", indexPath.row, [games objectAtIndex:indexPath.row]);
}

@end
