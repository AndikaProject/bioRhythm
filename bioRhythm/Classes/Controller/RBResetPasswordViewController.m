//
//  RBResetPasswordViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/20/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBResetPasswordViewController.h"

@interface RBResetPasswordViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buttonResetPassword;

@end

@implementation RBResetPasswordViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonResetPassword.backgroundColor = [UIColor colorWithRed:(62/255.0) green:(181/255.0) blue:(75/255.0) alpha:1];
    [_scrollerResetPassword setScrollEnabled:YES];
}

- (void) viewDidAppear:(BOOL)animated {
    [_scrollerResetPassword setContentSize:CGSizeMake(300, 700)];
    
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
