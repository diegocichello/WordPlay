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







    NSMutableAttributedString * attName = [[NSMutableAttributedString alloc] initWithString:self.name];

    [attName addAttribute:NSFontAttributeName
                   value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                   range:NSMakeRange(0,self.name.length)];

    NSMutableAttributedString * attAdjective = [[NSMutableAttributedString alloc] initWithString:self.adjective];

    [attAdjective addAttribute:NSFontAttributeName
                      value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                      range:NSMakeRange(0,self.adjective.length)];

    NSMutableAttributedString * attVerb = [[NSMutableAttributedString alloc] initWithString:self.verb];

    [attVerb addAttribute:NSFontAttributeName
                      value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                      range:NSMakeRange(0,self.verb.length)];

    NSMutableAttributedString * attNoun = [[NSMutableAttributedString alloc] initWithString:self.noun];

    [attNoun addAttribute:NSFontAttributeName
                      value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]
                      range:NSMakeRange(0,self.noun.length)];

    NSMutableAttributedString *story = [[NSMutableAttributedString alloc] initWithAttributedString:attName];

    NSMutableAttributedString *storyPartOne = [[NSMutableAttributedString alloc] initWithString:@" blablabla "];
    NSMutableAttributedString *storyPartTwo = [[NSMutableAttributedString alloc] initWithString:@" blebleble "];
    NSMutableAttributedString *storyPartThree = [[NSMutableAttributedString alloc] initWithString:@" bliblibli"];



    [story appendAttributedString:storyPartOne];
    [story appendAttributedString:attAdjective];
    [story appendAttributedString:storyPartTwo];
    [story appendAttributedString:attVerb];
    [story appendAttributedString:storyPartThree];
    [story appendAttributedString:attNoun];


    self.resultTextView.attributedText = story;














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
