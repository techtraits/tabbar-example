//
//  View1Controller.m
//  TabBar
//
//  Created by Usman Ismail on 11-10-02.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "View1Controller.h"


@implementation View1Controller
@synthesize textField;
@synthesize cmdButton;
@synthesize myView;
@synthesize delegateRef;

- (id)init
{
	if (self == [super init]) {
		// Initialization code
		self.title = @"Text and Button"; //Set View title which will be displayed in Tab Bar
		// create and configure the view
		CGRect cgRct = CGRectMake(0.0, 0.0, 480, 320); //define size and position of view
		myView = [[UIView alloc] initWithFrame:cgRct]; //initilize the view
		myView.autoresizesSubviews = YES;              //allow it to tweak size of elements in view
		self.view = myView;                            //set view property ov controller to the newly created view
        
		// create a UIButton (UIButtonTypeRoundedRect)
		cmdButton = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
		cmdButton.frame = CGRectMake(100, 100, 100, 50);
		[cmdButton setTitle:@"Click Me" forState:UIControlStateNormal];
		cmdButton.backgroundColor = [UIColor clearColor];
		[cmdButton addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
		cmdButton.adjustsImageWhenHighlighted = YES;
		//create a text field
		cgRct = CGRectMake(60, 170, 200, 50); //define size and position of textbox
		textField = [[UITextField alloc] initWithFrame:cgRct];
		textField.text = @"Enter Text Here";
		textField.borderStyle = UITextBorderStyleBezel;
		//Add text field and button to main view
		[self.view addSubview:cmdButton];
		[self.view addSubview:textField];
	}
	return self;
}

- (void)action:(id)sender {
	[self.textField resignFirstResponder]; //Hide Keyboard
	self.delegateRef.view2Controller.label.text = self.textField.text;//Ubdate label
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
