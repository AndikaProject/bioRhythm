//
//  RBLoginViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/19/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBLoginViewController.h"

@interface RBLoginViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buttonLogin;
@property (strong, nonatomic) IBOutlet UILabel *labelWelcome;
@property (strong, nonatomic) IBOutlet UITextField *textFieldName;
@property (strong, nonatomic) IBOutlet UITextField *textFieldPassword;


- (IBAction)buttonLoginPressed:(id)sender;

@end

@implementation RBLoginViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.buttonLogin.backgroundColor = [UIColor blueColor];
    
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
    NSString *name = _textFieldName.text;
    NSString *password = _textFieldPassword.text;
    UIAlertView *alertView;
    if (name.length == 0 || password.length == 0) {
        alertView  = [[UIAlertView alloc] initWithTitle:@"error" message:@"please fill username and password" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    } else {
        alertView = [[UIAlertView alloc] initWithTitle:@"login" message:@"succed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
}
@end
