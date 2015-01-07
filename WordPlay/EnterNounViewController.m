//
//  EnterNounViewController.m
//  WordPlay
//
//  Created by Diego Cichello on 1/6/15.
//  Copyright (c) 2015 Kevin Lee. All rights reserved.
//

#import "EnterNounViewController.h"
#import "ResultViewController.h"

@interface EnterNounViewController ()

@property (weak, nonatomic) IBOutlet UITextField *enterNounTextField;
@end

@implementation EnterNounViewController

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
    if ([self.enterNounTextField.text isEqualToString:@""])
    {

        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Can't be empty"
                                                        message:@"Noun not inserted"
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
    ResultViewController *resultVC = segue.destinationViewController;
    resultVC.name = self.name;
    resultVC.adjective = self.adjective;
    resultVC.verb = self.verb;
    resultVC.noun = self.enterNounTextField.text;

    
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
