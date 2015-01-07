//
//  ResultViewController.m
//  WordPlay
//
//  Created by Kevin on 1/6/15.
//  Copyright (c) 2015 Kevin Lee. All rights reserved.
//

#import "ResultViewController.h"


@interface ResultViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.resultTextView.text = [NSString stringWithFormat:@"%@ thought himself to be very %@ today", self.name, self.adjective];

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
