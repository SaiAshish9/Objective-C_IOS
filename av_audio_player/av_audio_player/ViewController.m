//
//  ViewController.m
//  av_audio_player
//
//  Created by Sai Ashish Darapureddy on 13/02/22.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface ViewController ()
{
    AVAudioPlayer *player;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)btnaudio:(id)sender {
    NSString *strpath = [[NSBundle mainBundle]pathForResource:@"audio" ofType:@"mp3"];
    NSURL *url = [NSURL URLWithString:strpath];
    player =[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    player.volume = 20.0;
    [player play];
}
@end
