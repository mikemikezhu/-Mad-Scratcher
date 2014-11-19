//
//  ResultViewController.m
//  撓死你
//
//  Created by Mike Zhu on 2014/10/11.
//  Copyright (c) 2014年 Mikemikezhu Media. All rights reserved.
//

#import "ResultViewController.h"
#import <Social/Social.h>

@interface ResultViewController ()
@property (weak, nonatomic) IBOutlet UITextView *congratText;
@property (weak, nonatomic) IBOutlet UITextView *sloganText;
@property (weak, nonatomic) IBOutlet UIButton *replayButton;
@property (weak, nonatomic) IBOutlet UIButton *showOffButton;
@property (weak, nonatomic) IBOutlet UILabel *chichiLabel;

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Make the UI stuff
    UIColor *redTextColor = [UIColor colorWithRed:0.9098 green:0.2471 blue:0.2471 alpha:1];
    
    UIFont *font = [UIFont fontWithName:@"DFWaWaSC-W5" size:28];
    
    [self.congratText setText:[NSString stringWithFormat:@"恭喜晒！\n你喺一分鐘內幫大衛\nR咗%lu次！", (unsigned long)self.count]];
    [self.congratText setFont:font];
    [self.congratText setTextColor:[UIColor whiteColor]];
    [self.congratText setTextAlignment:NSTextAlignmentCenter];
    
    UIFont *sloganFont = [UIFont fontWithName:@"DFWaWaSC-W5" size:18];
    self.sloganText.textColor = redTextColor;
    self.sloganText.font = sloganFont;
    
    UIFont *buttonFont = [UIFont fontWithName:@"DFWaWaSC-W5" size:26];
    self.replayButton.titleLabel.font = buttonFont;
    self.showOffButton.titleLabel.font = buttonFont;
    
    self.chichiLabel.font = sloganFont;
    self.chichiLabel.textColor = redTextColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showOffAction:(UIButton *)sender
{
    // share on facebook
    
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
