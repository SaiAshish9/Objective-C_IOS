```
git rm --cached . -rf
```

```
Select First Tab ,go to Embed at the menu bar, and pick Navigation Controller.
```

```
Last Option => Stack View
```

```
AVFoundation
AVKit
#import <UserNotifications/UserNotifications.h>
<sqlite3.h>
SCLAlertView
```

```
cd PROJECT_DIR
pod init

 pod 'FBSDKCoreKit'
 pod 'FBSDKLoginKit'
 pod 'FBSDKShareKit'

pod install
```

```
https://developers.facebook.com/docs/facebook-login/ios
File > Swift Packages > Add Package Dependency.
```

```
https://developers.google.com/identity/sign-in/ios/start-integrating
pod 'GoogleSignIn'
```

```
viewDidLoad viewDidAppear viewDidDisappear viewWillAppear viewWillDisappear 
```

```
NSURLSessionConfiguration
```

```
#define REGEX_USER_NAME_LIMIT @"^.{3,10}"

-(void) viewDidLoad(){
 [self setup];
}

-(void) setup {
[txt addRegex:REGEX_USER_NAME_LIMIT] withMsg:@"Username must contain between 3 to 10 characters";
}
```
