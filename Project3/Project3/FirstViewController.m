//
//  FirstViewController.m
//  Project3
//
//  Created by Jennifer Johnson on 6/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "PlaceInfoViewController.h"
#import <Mapkit/Mapkit.h>
#import "MyMapAnnotation.h"

@interface FirstViewController ()
@property (strong, nonatomic) PlaceInfoViewController *placeInfo;
@end

@implementation FirstViewController

@synthesize myTableView, places, placeInfo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Noodle Place Locations", @"Noodle Place Locations");
        self.tabBarItem.title = NSLocalizedString(@"Locations", @"Locations");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}


- (id)initWithArray:(NSMutableArray *)array {
    if (self = [super init]) {
        places = [array copy];
    }
    return self;
}
 

							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    UIBarButtonItem *rightButton =[[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(toggleEdit)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    /*
    
    CLLocationCoordinate2D arlington;
    arlington.latitude = 38.855467f;
    arlington.longitude = -77.050105f;
    
    CLLocationCoordinate2D palisades;
    palisades.latitude = 38.916961f;
    palisades.longitude = -77.095786f;
    
    CLLocationCoordinate2D capitalHeights;
    capitalHeights.latitude = 38.869802f;
    capitalHeights.longitude = -76.847958f;
    
    CLLocationCoordinate2D waldorf;
    waldorf.latitude = 38.617105f;
    waldorf.longitude = -76.925504f;
    
    CLLocationCoordinate2D alexandria;
    alexandria.latitude = 38.74923f;
    alexandria.longitude = -77.086025f;
    
    CLLocationCoordinate2D greenbelt;
    greenbelt.latitude = 38.993088f;
    greenbelt.longitude = -76.878723f;
    
    CLLocationCoordinate2D chinaTown;
    chinaTown.latitude = 38.899074f;
    chinaTown.longitude = -77.019121f;
    
    CLLocationCoordinate2D springfield;
    springfield.latitude = 38.781362f;
    springfield.longitude = -77.187072f;
    
    CLLocationCoordinate2D forestville;
    forestville.latitude = 38.848574f;
    forestville.longitude = -76.882938f;
    
    CLLocationCoordinate2D woodbridge;
    woodbridge.latitude = 38.644101f;
    woodbridge.longitude = -77.294142f;
    
*/
    
    places = [[NSMutableArray alloc] initWithObjects:@"NP - Arlington, VA", @"NP - Palisades", @"NP - Capital Heights, MD", @"NP - Waldorf, MD", @"NP - Alexandria, MD", @"NP - Greenbelt, MD", @"NP - China Town", @"NP - Springfield, VA", @"NP - Forestville, MD", @"NP - Woodbridge, VA", nil];
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
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
    return [places count];
}

-(void)toggleEdit
{
    [myTableView setEditing:!myTableView.editing animated:YES]; 
    
    if (myTableView.editing) 
    {
        [self.navigationItem.rightBarButtonItem setTitle:@"Done"];
    }
    else 
    {
        [self.navigationItem.rightBarButtonItem setTitle:@"Edit"];  
    }
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        [places removeObjectAtIndex:indexPath.row];
        NSLog(@"copied array from app del : %i",places.count);
        [myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}


// Each cell
-(UITableViewCell *)tableView:(UITableView *)tableView2 cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIndentifier = @"Cell";
    UITableViewCell *cell = [myTableView dequeueReusableCellWithIdentifier:CellIndentifier];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIndentifier];
    }
    
    cell.textLabel.text = (NSString*)[places objectAtIndex:indexPath.row];
    
    return cell;
}

// Go to Item Info Controller
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%d name=%@", indexPath.row, [places objectAtIndex:indexPath.row]);
    
    placeInfo = [[PlaceInfoViewController alloc] initWithNibName:@"PlaceInfoViewController" bundle:nil];
    NSUInteger row = [indexPath row];
    NSMutableArray *selectedItem = [places objectAtIndex:row];
    
    
    
    NSInteger whichOne = [indexPath row];
    
    NSString *detailMessage = [[NSString alloc] initWithFormat:@"Place: %@", selectedItem];
    placeInfo.title = detailMessage;
    placeInfo.message = detailMessage;
    placeInfo.which = whichOne;
    //placeInfo.lat = lat;
    //placeInfo.lon = lon;
    
    [self.navigationController pushViewController:placeInfo animated:YES];
    //MyMapAnnotation *showCoord = [places objectAtIndex:indexPath.row];
    //[placeInfo showMap:showCoord.coordinate title:showCoord.title];
    
}


@end
