//
//  YAViewController.m
//  YAScrollSegmentControl
//
//  Created by jimmy on 02/09/2015.
//  Copyright (c) 2014 jimmy. All rights reserved.
//

#import "YAViewController.h"
#import <YAScrollSegmentControl/YAScrollSegmentControl.h>

@interface YAViewController () <YAScrollSegmentControlDelegate>

@property (nonatomic, weak) IBOutlet YAScrollSegmentControl *scrollSegment;

@end

@implementation YAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.scrollSegment.buttons = @[@"Button 1", @"Button 2", @"Button 3", @"Button 4", @"Button 5"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonClicked:(id)sender
{
    NSMutableArray *newButtons = [self.scrollSegment.buttons mutableCopy];
    [newButtons addObject:[NSString stringWithFormat:@"Button %lu", (long)self.scrollSegment.buttons.count + 1]];
    
    self.scrollSegment.buttons = newButtons;
    self.scrollSegment.selectedIndex = newButtons.count - 1;
}

- (IBAction)addUsingCodeClicked:(id)sender
{
    if ([self.view viewWithTag:11]) {
        [[self.view viewWithTag:11] removeFromSuperview];
    }
    
    
    YAScrollSegmentControl *segmentControl = [[YAScrollSegmentControl alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height - 40) / 2, self.view.frame.size.width, 40)];
    segmentControl.buttons = @[@"Button 1", @"Button 2", @"Button 3", @"Button 4", @"Button 5"];
    segmentControl.delegate = self;
    segmentControl.tag = 11;
    [segmentControl setBackgroundImage:[UIImage imageNamed:@"background"] forState:UIControlStateNormal];
    [segmentControl setBackgroundImage:[UIImage imageNamed:@"backgroundSelected"] forState:UIControlStateSelected];
    [segmentControl setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    segmentControl.gradientColor = [UIColor redColor]; // Purposely set strange gradient color to demonstrate the effect
    
    [self.view addSubview:segmentControl];
}

- (void)didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"Button selected at index: %lu", (long)index);
}

@end
