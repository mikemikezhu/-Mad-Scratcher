//
//  DavidCryViewController.m
//  撓死你
//
//  Created by Mike Zhu on 2014/10/11.
//  Copyright (c) 2014年 Mikemikezhu Media. All rights reserved.
//

#import "DavidCryViewController.h"

@interface DavidCryViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *davidCryImage;
@property (nonatomic) BOOL davidCry1;

@property (strong, nonatomic) NSTimer *timer;
@property (nonatomic) NSUInteger seconds;

@end

@implementation DavidCryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.davidCry1 = YES;
    self.seconds = 0;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(davidCryAnimation) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) davidCryAnimation
{
    if (self.seconds <= 12) {
        if (self.davidCry1 == YES)
        {
            self.davidCryImage.image = [UIImage imageNamed:@"david_cry_2"];
            self.davidCry1 = NO;
        }
        else
        {
            self.davidCryImage.image = [UIImage imageNamed:@"david_cry_1"];
            self.davidCry1 = YES;
        }
        self.seconds++;
    }
    else
    {
        [self.timer invalidate];
        [self performSegueWithIdentifier:@"goToWelcome" sender:nil];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
