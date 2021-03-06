//
//  RBSecondViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/25/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBSecondViewController.h"

#import "RBCalibrationViewController.h"

#import "UIViewController+ECSlidingViewController.h"

@interface RBSecondViewController ()

@property (strong, nonatomic) IBOutlet UILabel *labelFourDescription;
@property (strong, nonatomic) IBOutlet UILabel *labelFourTime;

@property (strong, nonatomic) IBOutlet UIProgressView *progressViewCoach;

// calendar
@property (strong, nonatomic) IBOutlet UILabel *labelFirstDay;
@property (strong, nonatomic) IBOutlet UILabel *labelSecondDay;
@property (strong, nonatomic) IBOutlet UILabel *labelThirdDay;
@property (strong, nonatomic) IBOutlet UILabel *labelFourthDay;
@property (strong, nonatomic) IBOutlet UILabel *labelFifthDay;
@property (strong, nonatomic) IBOutlet UILabel *labelSixthDay;
@property (strong, nonatomic) IBOutlet UILabel *labelSeventhDay;

@property (strong, nonatomic) IBOutlet UILabel *labelFirstNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelSecondNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelThirdNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelFourthNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelFifthNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelSixthNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelSeventhNumber;

- (IBAction)buttonTestCal:(id)sender;

@end

@implementation RBSecondViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBSecondViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBSecondViewController"];
    
    return controller;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.slidingViewController.topViewController.view addGestureRecognizer:self.slidingViewController.panGesture];
    self.slidingViewController.topViewAnchoredGesture = ECSlidingViewControllerAnchoredGestureTapping | ECSlidingViewControllerAnchoredGesturePanning;
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    [self.navigationController setNavigationBarHidden:NO]; // it shows nav bar
    
    self.tabBarController.tabBar.barTintColor =  [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    
    self.tabBarController.tabBar.tintColor = [UIColor whiteColor];
    
    [_scrollerCoach setScrollEnabled:YES];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1]];
    
    // set text to label description
    self.labelFourDescription.text = @"Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit.";
    
    // set text to label time
    self.labelFourTime.text = @"11:20";
    
    // set progress view
    self.progressViewCoach.progress=0.15f;
    
}

- (void) viewDidAppear:(BOOL)animated {
    [_scrollerCoach setContentSize:CGSizeMake(320, 640)];
    
}

//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:YES];   //it hides
//}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO];    // it shows
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action

- (IBAction)buttonMenuPressed:(id)sender {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
}

- (IBAction)buttonFourPressed:(id)sender {
    UIAlertView *alertView4 = [[UIAlertView alloc] initWithTitle:@"Welcome!" message:@"Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit." delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
    [alertView4 show];
}

- (IBAction)buttonTestCal:(id)sender
{
    RBCalibrationViewController *controller = [RBCalibrationViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:YES];

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
