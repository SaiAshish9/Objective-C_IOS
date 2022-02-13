//
//  ViewController.m
//  av_player
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"
#import <AVFoundation/AvFoundation.h>
#import <AVKit/AVKit.h>

@interface ViewController ()
{
    AVPlayer *player;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *strpath = [[NSBundle mainBundle]pathForResource:@"video" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:strpath];
    AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
    player = [AVPlayer playerWithPlayerItem:item];
    player.volume = 2.0;
    AVPlayerLayer *layer = [AVPlayerLayer playerLayerWithPlayer:player];
    layer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    layer.frame = _videoView.layer.bounds;
    [_videoView.layer addSublayer:layer];
    [player play];
}


@end
