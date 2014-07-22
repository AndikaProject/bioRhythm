//
//  RBLoginViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/19/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBLoginViewController.h"

#import "RBCreateAccountViewController.h"



@interface RBLoginViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (strong, nonatomic) IBOutlet UITextField *textFieldPassword;
@property (strong, nonatomic) IBOutlet UIButton *buttonLogin;



@end

@implementation RBLoginViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBLoginViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBLoginViewController"];
    
    return controller;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.buttonLogin.backgroundColor = [UIColor blackColor];
    [_scrollerLogin setScrollEnabled:YES];
    [_scrollerLogin setContentSize:(CGSizeMake(341, 800))];
    
    // Do any additional setup after loading the view.
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

#pragma mark - action
- (IBAction)buttonLoginPressed:(id)sender {
    NSString *name = _textFieldEmail.text;
    NSString *password = _textFieldPassword.text;
    UIAlertView *alertView;
    if (name.length == 0 || password.length == 0) {
        alertView  = [[UIAlertView alloc] initWithTitle:@"error" message:@"please fill username and password" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    } else {
        alertView = [[UIAlertView alloc] initWithTitle:@"login" message:@"success" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
}


//- (IBAction)buttonCreateAccountPressed:(id)sender {
//  
// RBCreateAccountViewController *controller = [RBCreateAccountViewController controllerWithStoryBoard:self.storyboard];
//[self presentViewController:controller animated:YES completion:nil];
//   
//}



@end
