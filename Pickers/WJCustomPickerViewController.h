//
//  WJCustomPickerViewController.h
//  Pickers
//
//  Created by Wenjian Zhou on 10/10/12.
//  Copyright (c) 2012 Wenjian Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WJCustomPickerViewController : UIViewController
    <UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *winLable;
@property (strong, nonatomic) NSArray *column1;
@property (strong, nonatomic) NSArray *column2;
@property (strong, nonatomic) NSArray *column3;
@property (strong, nonatomic) NSArray *column4;
@property (strong, nonatomic) NSArray *column5;
@property (strong, nonatomic) IBOutlet UIButton *button;

- (IBAction)spin;
@end
