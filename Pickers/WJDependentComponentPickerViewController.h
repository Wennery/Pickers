//
//  WJDependentComponentPickerViewController.h
//  Pickers
//
//  Created by Wenjian Zhou on 10/10/12.
//  Copyright (c) 2012 Wenjian Zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kStateComponent 0
#define kZipComponent 1

@interface WJDependentComponentPickerViewController : UIViewController
    <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSDictionary *stateZips;
@property (strong, nonatomic) NSArray *states;
@property (strong, nonatomic) NSArray *zips;

- (IBAction)buttonPressed;

@end
