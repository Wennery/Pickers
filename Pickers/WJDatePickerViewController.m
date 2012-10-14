//
//  WJDatePickerViewController.m
//  Pickers
//
//  Created by Wenjian Zhou on 10/10/12.
//  Copyright (c) 2012 Wenjian Zhou. All rights reserved.
//

#import "WJDatePickerViewController.h"

@interface WJDatePickerViewController ()

@end

@implementation WJDatePickerViewController
@synthesize datePicker;

- (IBAction)buttonPressed
{
    NSDate *selected = [datePicker date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd, MM, yyyy HH:mm"];
    NSLocale *cnLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"cn_CN"];
    [dateFormatter setLocale:cnLocale];
    NSString *time = [dateFormatter stringFromDate:selected];
    NSString *message = [[NSString alloc] initWithFormat:@"The date and time you selected is: %@", time];
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Date and Time Selected" message:message delegate:nil cancelButtonTitle:@"Yes，I did." otherButtonTitles:@"No, I didn't", @"Of course you did",nil];
    [alert show];
}

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
    // Do any additional setup after loading the view from its nib.
    NSDate *now = [NSDate date];
    [datePicker setDate:now animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
