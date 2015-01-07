//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Kevin on 1/6/15.
//  Copyright (c) 2015 Kevin Lee. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;


@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultViewController *resultVC = segue.destinationViewController;
    resultVC.name = self.name;
    resultVC.adjective = self.adjectiveTextField.text;
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
