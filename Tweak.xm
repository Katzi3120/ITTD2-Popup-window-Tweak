//
// Created by SebbySeb on the 12/9/2019


#include <substrate.h> 


%hook UnityAppController //Hooking appdelegate for hooking app load instead of costum ctor.
-(void)applicationDidBecomeActive:(id) {
  dispatch_async(dispatch_get_main_queue(), ^{ // using dispatch_async to execute on main thread
    UIAlertController *alert = [UIAlertController
    alertControllerWithTitle:@"into the dead 2 hacks by SebbySeb" 
    message:@"for more cool hacks visit nabzclan.com" 
    preferredStyle:UIAlertControllerStyleAlert]; 

    [[[[UIApplication sharedApplication] keyWindow] rootViewController] presentViewController:alert animated:YES completion:^{
       }];
       });
       return %orig(); //original implementation duh.
    }
%end // ending opened hook 
