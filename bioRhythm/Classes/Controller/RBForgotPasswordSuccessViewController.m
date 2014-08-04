//
//  RBForgotPasswordSuccessViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/20/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBForgotPasswordSuccessViewController.h"

#import "RBLoginViewController.h"

@interface RBForgotPasswordSuccessViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buttonGoToLogin;

@end

@implementation RBForgotPasswordSuccessViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonGoToLogin.backgroundColor = [UIColor colorWithRed:(62/255.0) green:(181/255.0) blue:(75/255.0) alpha:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action
- (IBAction)buttonGoToLoginPressed:(id)sender {
//    RBLoginViewController *controller = [RBLoginViewController controllerWithStoryBoard:self.storyboard];
//    [self presentViewController:controller animated:YES completion:nil];
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
