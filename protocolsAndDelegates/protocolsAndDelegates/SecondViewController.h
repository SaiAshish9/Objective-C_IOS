//
//  SecondViewController.h
//  protocolsAndDelegates
//
//  Created by Sai Ashish Darapureddy on 14/02/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ABC <NSObject>

-(void) setlastname:(NSString *)lastname;
-(void) setbgcolor:(UIColor *)bgcolor;
-(void) settxtcolor:(UIColor *)txtcolor;

@end

@interface SecondViewController : UIViewController
@property(retain,nonatomic) id<ABC> obj;
@property (weak, nonatomic) IBOutlet UITextField *txtlastname;
- (IBAction)btndone:(id)sender;

@end

NS_ASSUME_NONNULL_END
