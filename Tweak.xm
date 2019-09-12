//
// Created by SebbySeb on the 12/9/2019
// THIS DOES NOT WORK ON APPLICATIONS ONLY GAMES

#include <substrate.h> 


%hook UnityAppController //Hooking appdelegate for hooking app load instead of costum ctor.
-(void)applicationDidBecomeActive:(id) {
  dispatch_async(dispatch_get_main_queue(), ^{ // using dispatch_async to execute on main thread
    UIAlertController *alert = [UIAlertController
    alertControllerWithTitle:@"into the dead 2 hacks by SebbySeb" // setting the title -.-
    message:@"for more cool hacks visit nabzclan.com" // setting the message -.-
    preferredStyle:UIAlertControllerStyleAlert]; // just some style -.-

    /*
    *implementation to the app sharedApplication is app instance refs to: https://developer.apple.com/documentation/uikit/uiapplication/1622975-sharedapplication?language=objc
    *keyWindow is kinda obvious what it is, it's app key window refs to: https://developer.apple.com/documentation/uikit/uiapplication/1622924-keywindow?language=objc
    *rootViewController is providing contents of the view refs to: https://developer.apple.com/documentation/uikit/uiwindow/1621581-rootviewcontroller?language=objc
    *presentViewController:animated:completion is selfexplanatory refs to: https://developer.apple.com/documentation/uikit/uiviewcontroller/1621380-presentviewcontroller
    */
    [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:alert animated:YES completion:^{
       }];
       });
       return %orig(); //original implementation duh.
    }
%end // ending opened hook 
