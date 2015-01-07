//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Diego Cichello on 1/6/15.
//  Copyright (c) 2015 Kevin Lee. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterNounViewController.h"

@interface EnterVerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *enterVerbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.enterVerbTextField.text isEqualToString:@""])
    {

        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Can't be empty"
                                                        message:@"Verb not inserted"
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
    EnterNounViewController *nounVC = segue.destinationViewController;
    nounVC.name = self.name;
    nounVC.adjective = self.adjective;
    nounVC.verb = self.enterVerbTextField.text;


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
