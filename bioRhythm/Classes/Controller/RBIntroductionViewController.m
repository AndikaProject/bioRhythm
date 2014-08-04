//
//  RBIntroductionViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/22/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBIntroductionViewController.h"

@interface RBIntroductionViewController ()

@property (strong, nonatomic) IBOutlet UIButton *buttonGotIt;
@property (strong, nonatomic) IBOutlet UIButton *firstReadMore;
@property (strong, nonatomic) IBOutlet UIButton *secondReadMore;

@end

@implementation RBIntroductionViewController

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
    self.buttonGotIt.backgroundColor = [UIColor colorWithRed:(62/255.0) green:(181/255.0) blue:(75/255.0) alpha:1];
    self.firstReadMore.backgroundColor = [UIColor lightGrayColor];
    self.secondReadMore.backgroundColor = [UIColor lightGrayColor];
    
    [_scrollerIntroduction setScrollEnabled:YES];
}

- (void) viewDidAppear:(BOOL)animated {
    [_scrollerIntroduction setContentSize:CGSizeMake(320, 568)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action
- (IBAction)buttonReadMore1Pressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"About this APP" message:@"Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit. Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
    [alert show];
}

- (IBAction)buttonReadMore2Pressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"About privacy and security\n" message:@"Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor.\n \n \u2713 We transfer and store it securely. There is no Departure flight details connection to any ASML DEPARTUREIT system.\n \u2713 No one at ASML has ARRIVAL access to your data.\n \u2713 We will not sell or share your data.\n \u2713 At any point you can download or delete your data. " delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
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
