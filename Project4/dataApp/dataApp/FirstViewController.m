//
//  FirstViewController.m
//  dataApp
//
//  Created by Jennifer Johnson on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "ItemInfoViewController.h"
#import "HeroInfo.h"

@interface FirstViewController ()
@property (strong, nonatomic) ItemInfoViewController *itemInfo; 
@end

@implementation FirstViewController

@synthesize itemInfo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
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
    //NSError *error = nil;
    numItems = 0;
    items = [[NSMutableArray alloc] init];
    url = [[NSURL alloc] initWithString:@"https://dl.dropbox.com/u/61951908/superheroes.xml"];
    request = [[NSURLRequest alloc] initWithURL:url];
    if(request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    }
    
    requestData = [NSMutableData data];

    //NSData *xmlData = [NSData dataWithContentsOfFile:@"xmlFile.xml"];
    
     
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if([elementName isEqualToString:@"hero"]){
        NSString *name = [attributeDict valueForKey:@"name"];
        NSString *publisher = [attributeDict valueForKey:@"publisher"];
        NSLog(@"%@", name);
        HeroInfo *hero = [[HeroInfo alloc] initWithName:name heroPublisher:publisher];
        if(hero != nil)
        {
            [items addObject:hero];
        }
        NSLog(@"array: %@", items);
    }
}

- (NSData*)GetFileDataFromFile:(NSString*)filename
{
    NSString *filePath = nil;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    filePath = [documentsDirectory stringByAppendingPathComponent:filename];
    if ([fileManager fileExistsAtPath:filePath])
    {
        return  [NSData dataWithContentsOfFile:filePath];
    }
    return nil;
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if(data != nil)
    {
        [requestData appendData:data];
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if(requestString != nil)
    {
        NSLog(@"%@", requestString);
        
        
        
        
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
        if (documentsDirectory !=nil)
        {
            NSString *fullPath = [[NSString alloc] initWithFormat:@"%@/%@",documentsDirectory, @"xmlFile.xml"];
            if (fullPath != nil)
            {
                [requestData writeToFile:fullPath atomically:true];
                //NSString *path = [[NSBundle mainBundle] pathForResource: @"xmlFile" ofType: @"xml"];
                //NSData *xmlData = [NSData dataWithContentsOfFile:path];
                NSXMLParser *parser = [[NSXMLParser alloc] initWithData:requestData];
                if(parser != nil)
                {
                    [parser setDelegate:self];
                    [parser parse];
                } 
            }
        }
    }
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
    return [items count];
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
    
    HeroInfo *itemName = [items objectAtIndex:indexPath.row];
    NSString *heroName = [itemName valueForKey:@"name"];
    cell.textLabel.text =heroName;
    
    return cell;
}

// Go to Item Info Controller
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{  
    itemInfo = [[ItemInfoViewController alloc] initWithNibName:@"ItemInfoViewController" bundle:nil];
    
    HeroInfo *heroName = [items objectAtIndex:indexPath.row];
    NSString *theName = [heroName valueForKey:@"name"];
    NSString *publisherName = [heroName valueForKey:@"publisher"];
                              
    [itemInfo passName:theName publisher:publisherName];

    
    [self.navigationController pushViewController:itemInfo animated:YES];

    
}



@end
