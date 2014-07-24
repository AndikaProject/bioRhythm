//
//  RBCreateAccountViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/20/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBCreateAccountViewController.h"

@interface RBCreateAccountViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buttonCreateAccount;

@end

@implementation RBCreateAccountViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBCreateAccountViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBCreateAccountViewController"];
    
    return controller;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonCreateAccount.backgroundColor = [UIColor blueColor];
    
    [_scrollerCreateAccount setScrollEnabled:YES];
}

- (void) viewDidAppear:(BOOL)animated {
    [_scrollerCreateAccount setContentSize:CGSizeMake(320, 700)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action

- (IBAction)buttonTACPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Terms and Condition" message:@"Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit. Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
    [alert show];
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
