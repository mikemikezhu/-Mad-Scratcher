//
//  ViewController.m
//  撓死你
//
//  Created by Mike Zhu on 2014/10/11.
//  Copyright (c) 2014年 Mikemikezhu Media. All rights reserved.
//  DFWaWaSC-W5

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *footImageWithRedDots;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self footAnimation];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) footAnimation
{
    self.footImageWithRedDots.alpha = 0;
    [UIView animateWithDuration:0.6
                     animations:^{
                         self.footImageWithRedDots.alpha = 1;
                     }
                     completion:^(BOOL finished) {
                         
                         [UIView animateWithDuration:0.6
                                          animations:^{
                                              self.footImageWithRedDots.alpha = 0;
                                          }
                                          completion:^(BOOL finished) {
                                              
                                              [UIView animateWithDuration:0.6
                                                               animations:^{
                                                                   self.footImageWithRedDots.alpha = 1;
                                                               }
                                                               completion:^(BOOL finished) {
                                                                   
                                                                   [UIView animateWithDuration:0.6
                                                                                    animations:^{
                                                                                        self.footImageWithRedDots.alpha = 0;
                                                                                    }
                                                                                    completion:^(BOOL finished){
                                                                                    
                                                                                        [UIView animateWithDuration:0.6
                                                                                                         animations:^{
                                                                                                             self.footImageWithRedDots.alpha = 1;
                                                                                                         }
                                                                                                         completion:^(BOOL finished){
                                                                                                             
                                                                                                             [UIView animateWithDuration:0.6
                                                                                                                              animations:^{
                                                                                                                                  self.footImageWithRedDots.alpha = 0;
                                                                                                                              }
                                                                                                                              completion:^(BOOL finished){
                                                                                                                                  
                                                                                                                                  [UIView animateWithDuration:0.6
                                                                                                                                                   animations:^{
                                                                                                                                                       self.footImageWithRedDots.alpha = 1;
                                                                                                                                                   }
                                                                                                                                                   completion:^(BOOL finished){
                                                                                                                                                       
                                                                                                                                                       [self performSegueWithIdentifier:@"goToDavid" sender:nil];
                                                                                                                                                       
                                                                                                                                                       
                                                                                                                                                   }];
                                                                                                                                  
                                                                                                                                  
                                                                                                                              }];
                                                                                                             
                                                                                                             
                                                                                                         }];

                                                                                    
                                                                                    
                                                                                    }];

                                                               }];
                                          }];
                     }];
}

@end
