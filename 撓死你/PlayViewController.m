
//  PlayViewController.m
//  撓死你
//
//  Created by Mike Zhu on 2014/10/11.
//  Copyright (c) 2014年 Mikemikezhu Media. All rights reserved.
//

#import "PlayViewController.h"
#import "ResultViewController.h"

@interface PlayViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *feetImageView;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (nonatomic) NSUInteger seconds;
@property (nonatomic) NSUInteger count;

@property (strong, nonatomic) NSTimer *timer;

@property (nonatomic) BOOL touchesBegan;
@property (nonatomic) BOOL fingerIsMoving;
@property (nonatomic) BOOL timeFinished;
@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIFont *font = [UIFont fontWithName:@"DFWaWaSC-W5" size:30];
    [self.secondLabel setFont:font];
    [self.countLabel setFont:font];
    
    self.seconds = 5;
    self.count = 0;
    
    self.touchesBegan = NO;
    self.fingerIsMoving = NO;
    self.timeFinished = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (self.touchesBegan == NO) {
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countTime) userInfo:nil repeats:YES];
        self.touchesBegan = YES;
    }
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.feetImageView];
    
    if (CGRectContainsPoint(self.feetImageView.bounds, location) == YES)
    {
        if (self.fingerIsMoving == NO && self.timeFinished == NO) {
            self.count++;
            [self.countLabel setText:[NSString stringWithFormat:@"%lu 次", (unsigned long)self.count]];
            self.fingerIsMoving = YES;
        }
    }
    else
    {
        self.fingerIsMoving = NO;
    }
}

- (void) countTime
{
    if (self.seconds > 0) {
        self.seconds--;
        [self.secondLabel setText:[NSString stringWithFormat:@"%lu 秒", (unsigned long)self.seconds]];
    }
    else
    {
        self.timeFinished = YES;
        [self.timer invalidate];
        [self performSegueWithIdentifier:@"goToResult" sender:nil];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"goToResult"]) {
        if ([segue.destinationViewController isKindOfClass: [ResultViewController class]]) {
            ResultViewController * rvc = (ResultViewController *) segue.destinationViewController;
            rvc.count = self.count;
        }
    }
}


@end
