//
//  pageViewController.m
//  pageViewController
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "pageViewController.h"
#import "ViewController.h"

@interface pageViewController ()
{
    NSArray *arrimg;
}
@end

@implementation pageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrimg = [[NSArray alloc]initWithObjects:@"profile-pic.jpeg",@"lambda-test.png",@"profile-pic.jpeg",@"lambda-test.png", nil];
    self.dataSource = self;
   ViewController *vc = (ViewController  *)[self viewControllerAtIndex:0];
    NSArray *arr = [NSArray arrayWithObjects:vc];
    [self setViewControllers:arr direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

-(UIViewController *) viewControllerAtIndex:(NSUInteger)index{
    ViewController *view1 = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    view1.strimg = arrimg[index];
    view1.valueIndex = index;
    return view1;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    NSUInteger index = ((ViewController *)viewController).valueIndex;
    if(index == 0 || index == NSNotFound)
        return nil;
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    NSUInteger index = ((ViewController *)viewController).valueIndex;
    if(index == NSNotFound)
        return nil;
    index++;
    if(index == arrimg.count)
        return nil;
    return [self viewControllerAtIndex:index];

}

@end
