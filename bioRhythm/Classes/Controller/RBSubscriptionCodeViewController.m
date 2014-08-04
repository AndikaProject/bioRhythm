//
//  RBSubscriptionCodeViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/20/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBSubscriptionCodeViewController.h"

@interface RBSubscriptionCodeViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buttonSubscriptionContinue;
@property (strong, nonatomic) IBOutlet UIButton *buttonLostYourCode;
@property (strong, nonatomic) IBOutlet UIButton *buttonWeb;

@end

@implementation RBSubscriptionCodeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonSubscriptionContinue.backgroundColor = [UIColor colorWithRed:(62/255.0) green:(181/255.0) blue:(75/255.0) alpha:1];
    self.buttonLostYourCode.backgroundColor = [UIColor lightGrayColor];
    self.buttonWeb.backgroundColor = [UIColor lightGrayColor];
    
    
    [_scrollerSubscription setScrollEnabled:YES];
}

- (void)viewDidAppear:(BOOL)animated {
    [_scrollerSubscription setContentSize:CGSizeMake(320, 568)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
