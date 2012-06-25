//
//  TabBarAppDelegate.h
//  TabBar
//
//  Created by Usman Ismail on 11-10-02.
//  Copyright 2011 www.TechTraits.ca. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "View1Controller.h"
#import "View2Controller.h"

@class TabBarViewController;
@class View1Controller;
@class View2Controller;

@interface TabBarAppDelegate : NSObject
{
    UIWindow *window;
    UITabBarController *tabBarController;
    View1Controller *view1Controller;
    View2Controller *view2Controller;
}

@property (nonatomic, assign) UIWindow *window;
@property (nonatomic, assign) UITabBarController *tabBarController;
@property (nonatomic, assign) View1Controller *view1Controller;
@property (nonatomic, assign) View2Controller *view2Controller;
@end
