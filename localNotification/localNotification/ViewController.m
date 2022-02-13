//
//  ViewController.m
//  localNotification
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL isGrantedNotificationAccess;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    isGrantedNotificationAccess = false;
    UNUserNotificationCenter *center = [UNUserNotificationCenter
     currentNotificationCenter];
    UNAuthorizationOptions options = UNAuthorizationOptionAlert + UNAuthorizationOptionSound;
    [center requestAuthorizationWithOptions:options completionHandler:^(BOOL granted,NSError * _Nullable error){
        isGrantedNotificationAccess = granted;
    }];
}


- (IBAction)btnln:(id)sender {
    if(isGrantedNotificationAccess){
        UNUserNotificationCenter *center = [UNUserNotificationCenter
         currentNotificationCenter];
        UNMutableNotificationContent *mucontent = [[UNMutableNotificationContent alloc]init];
        mucontent.title = @"Sai";
        mucontent.subtitle= @"Ashish";
        mucontent.body= @"Developer";
        mucontent.sound = [UNNotificationSound defaultSound];
        
        UNTimeIntervalNotificationTrigger *trigger = [
                                                      UNTimeIntervalNotificationTrigger triggerWithTimeInterval:3 repeats:NO];
        UNNotificationRequest *request = [UNNotificationRequest
                                          requestWithIdentifier:@"UYLocalNotification" content:mucontent trigger:trigger
                                          ];

        [center addNotificationRequest:request withCompletionHandler:nil];
    }
}
@end
