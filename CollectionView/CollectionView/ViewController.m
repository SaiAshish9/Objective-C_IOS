//
//  ViewController.m
//  CollectionView
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arrimg = [[NSMutableArray alloc]initWithObjects:@"profile-pic.jpeg",
               @"profile-pic.jpeg",
               @"profile-pic.jpeg",
               @"profile-pic.jpeg",
               @"profile-pic.jpeg",
               @"profile-pic.jpeg",
               @"profile-pic.jpeg",
               @"profile-pic.jpeg",
               @"profile-pic.jpeg",
               @"profile-pic.jpeg",
               @"profile-pic.jpeg",
               nil];
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIImageView *image1 = (UIImageView *)[cell viewWithTag:1];
    image1.image = [UIImage imageNamed:[_arrimg objectAtIndex:indexPath.row]];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _arrimg.count;
}

- (void)collectionView:(nonnull UICollectionView *)collectionView didSelectItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    secondViewController * sec = [self.storyboard instantiateViewControllerWithIdentifier:@"sec"];
    sec.strimg = [_arrimg objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:sec animated:YES];
    }


@end
