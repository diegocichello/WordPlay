//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Kevin on 1/6/15.
//  Copyright (c) 2015 Kevin Lee. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;


@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.adjectiveTextField.text isEqualToString:@""])
    {

        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Can't be empty"
                                                        message:@"Adjective not inserted"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        return NO;
    }
    else
    {
        return YES;
    }
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterVerbViewController *verbVC = segue.destinationViewController;
    verbVC.name = self.name;
    verbVC.adjective = self.adjectiveTextField.text;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
