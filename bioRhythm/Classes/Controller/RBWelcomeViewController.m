//
//  RBWelcomeViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/22/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBWelcomeViewController.h"

@interface RBWelcomeViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buttonNewUser;
@property (strong, nonatomic) IBOutlet UIButton *buttonExistingUser;

@end

@implementation RBWelcomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.buttonNewUser.backgroundColor = [UIColor blueColor];
    self.buttonExistingUser.backgroundColor = [UIColor blueColor];
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
