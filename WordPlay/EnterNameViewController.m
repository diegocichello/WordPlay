//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Kevin on 1/6/15.
//  Copyright (c) 2015 Kevin Lee. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([self.nameTextField.text isEqualToString:@""])
    {

        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Can't be empty"
                                                        message:@"Name not inserted"
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


    EnterAdjectiveViewController *adjvc = segue.destinationViewController;
    adjvc.name = self.nameTextField.text;
    

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
