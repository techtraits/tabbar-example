#import <UIKit/UIKit.h>
#import "TabBarAppDelegate.h"

@class TabBarAppDelegate;
@interface View1Controller : UIViewController
{
    UITextField                *textField;
    UIButton                   *cmdButton;
    UIView                     *myView;
    TabBarAppDelegate          *delegateRef;
}

@property (nonatomic, assign)    UITextField                 *textField;
@property (nonatomic, assign)    UIButton                    *cmdButton;
@property (nonatomic, assign)    UIView                      *myView;
@property (nonatomic, assign)    TabBarAppDelegate           *delegateRef;

@end