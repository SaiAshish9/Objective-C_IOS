//
//  ViewController.h
//  CollectionView
//
//  Created by Sai Ashish Darapureddy on 12/02/22.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property(strong,nonatomic) NSMutableArray *arrimg;

@end

