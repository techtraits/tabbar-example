//
//  View2Controller.m
//  TabBar
//
//  Created by Usman Ismail on 11-10-02.
//  Copyright 2011 www.TechTraits.ca. All rights reserved.
//

#import "View2Controller.h"


@implementation View2Controller
@synthesize myView;
@synthesize label;

-(id)init{
	if(self == [super init])
	{
		//Initialization code
		self.title = @"Label"; //Set View title which will be displayed in Tab Bar
		//create and configure the view
		CGRect cgRct = CGRectMake(0.0, 0.0, 480, 320);
		myView = [[UIView alloc]initWithFrame:cgRct];
		myView.autoresizesSubviews = YES;
		self.view = myView;
		
		//create a text field
		cgRct = CGRectMake(60, 170, 200, 50); //define size and position of textbox
		label = [[UILabel alloc] initWithFrame:cgRct];
		label.text = @"Enter Text Here";
		//Add text field and button to main view
		[self.view addSubview:label];
	}
	return self;
} 

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

@end
