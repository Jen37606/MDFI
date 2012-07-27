//
//  ThirdViewController.m
//  Project2
//
//  Created by Jennifer Johnson on 6/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"
#import "ItemInfoViewController.h"

@interface ThirdViewController ()
@property (strong, nonatomic) ItemInfoViewController *itemInfo;
@end

@implementation ThirdViewController

@synthesize items;
@synthesize tableView;
@synthesize itemInfo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Settings", @"Settings");
        self.tabBarItem.image = [UIImage imageNamed:@"gear"];
    }
    return self;
}

- (id)initWithArray:(NSMutableArray *)array {
    if (self = [super init]) {
        items = [array copy];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.


- (void)viewDidLoad
{
    items = [[NSMutableArray alloc] initWithObjects:@"Edit Profile", @"Sharing Settings", @"Log out", nil];

    
    self.title = @"Settings";
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
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
    return [items count];
}


// Each cell
-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIndentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIndentifier];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIndentifier];
    }
    
    cell.textLabel.text = (NSString*)[items objectAtIndex:indexPath.row];
    
    return cell;
}

// Go to Item Info Controller
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%d name=%@", indexPath.row, [items objectAtIndex:indexPath.row]);
    
    itemInfo = [[ItemInfoViewController alloc] initWithNibName:@"ItemInfoView" bundle:nil];
    NSUInteger row = [indexPath row];
    NSMutableArray *selectedItem = [items objectAtIndex:row];
    

    NSString *detailMessage = [[NSString alloc] initWithFormat:@"%@ is the item you chose!", selectedItem];
    itemInfo.message = detailMessage;
    //itemInfo.title = selectedItem;
    
    
    [self.navigationController pushViewController:itemInfo animated:YES];
    //[self presentModalViewController:itemInfo animated:true];
    
    
}


@end
