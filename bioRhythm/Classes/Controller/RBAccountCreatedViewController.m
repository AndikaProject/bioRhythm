//
//  RBAccountCreatedViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/24/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBAccountCreatedViewController.h"

@interface RBAccountCreatedViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buttonAccountCreated;

@end

@implementation RBAccountCreatedViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonAccountCreated.backgroundColor = [UIColor blueColor];
    
    [_scrollerAccountCreated setScrollEnabled:YES];
}

- (void) viewDidAppear:(BOOL)animated {
    [_scrollerAccountCreated setContentSize:CGSizeMake(320, 700)];
    
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
