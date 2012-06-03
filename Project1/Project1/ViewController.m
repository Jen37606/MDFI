//
//  ViewController.m
//  Project1
//
//  Created by Jennifer Johnson on 6/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableCell.h"
#import "SecondView.h"

@interface ViewController ()
@property (strong, nonatomic) SecondView *gameInfo;
@end

@implementation ViewController
@synthesize games;
@synthesize myTableView;
@synthesize gameInfo;

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

- (id)initWithArray:(NSMutableArray *)array {
    if (self = [super init]) {
        games = [array copy];
    }
    return self;
}


- (void)viewDidLoad
{
    NSDictionary *row1 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Super Mario Bros.", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row2 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"The Legend of Zelda", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row3 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Sonic the Hedgehog", @"Name", @"Sega Genisis", @"System", nil];
    NSDictionary *row4 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Final Fantasy", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row5 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Kirby", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row6 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Donkey Kong", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row7 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Cool Spot", @"Name", @"Sega Genesis", @"System", nil];
    NSDictionary *row8 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Pokemon", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row9 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Mega Man", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row10 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Metroid", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row11 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Dr. Mario", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row12 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Zelda II: The Adventure of Link", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row13 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Sonic & Knuckles", @"Name", @"Sega Genesis", @"System", nil];
    NSDictionary *row14 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Sonic the Hedgehog 2", @"Name", @"Sega Genesis", @"System", nil];
    NSDictionary *row15 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Sonic 3d Blast", @"Name", @"Sega Genesis", @"System", nil];
    NSDictionary *row16 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Castlvania", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row17 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Ninja Gaiden", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row18 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Pac-Man", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row19 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Teenage Mutant Ninja Turtles", @"Name", @"Nintendo", @"System", nil];
    NSDictionary *row20 = [[NSDictionary alloc] initWithObjectsAndKeys:
                          @"Tetris", @"Name", @"Nintendo", @"System", nil];
    
    self.games = [[NSMutableArray alloc] initWithObjects:row1, row2, row3, row4, row5, row6, row7, row8, row9, row10, row11, row12, row13, row14, row15, row16, row17, row18, row19, row20, nil];
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

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}


// Edit Button
- (IBAction)editButton:(id)sender {
    if (!myTableView.editing) {
        [(UIButton*)sender setTitle:@"Done" forState:UIControlStateNormal];
        [myTableView setEditing:YES animated:YES];
    }else {
        [(UIButton*)sender setTitle:@"Edit" forState:UIControlStateNormal];
        [myTableView setEditing:NO animated:YES];
    }
}

// Delete rows
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"Delete row %d", indexPath.row);
        
        [games removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    }
}



// Go to Second View Controller
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%d name=%@", indexPath.row, [games objectAtIndex:indexPath.row]);
    
    gameInfo = [[SecondView alloc] initWithNibName:@"SecondView" bundle:nil];
    NSUInteger row = [indexPath row];
    NSDictionary *selectedGame = [self.games objectAtIndex:row];
    
    NSString *name = [selectedGame objectForKey:@"Name"];

    
    NSString *detailMessage = [[NSString alloc] initWithFormat:@"%@ is a fun game!", name];
    gameInfo.message = detailMessage;
    gameInfo.title = name;
    [self.navigationController pushViewController:gameInfo animated:YES];
    [self presentModalViewController:gameInfo animated:true];


}

@end
