/*
 
 YAScrollSegmentControl.h

Copyright (c) 2015 Jimmy Arts

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 */

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@protocol YAScrollSegmentControlDelegate;

@interface YAScrollSegmentControl : UIControl

@property (nonatomic, strong) NSArray *buttons;

@property (nonatomic, assign) IBInspectable CGFloat edgeMargin;
@property (nonatomic, assign) IBInspectable CGFloat gradientScrollOffset;
@property (nonatomic, assign) IBInspectable CGFloat gradientPercentage;
@property (nonatomic, strong) IBInspectable UIColor *gradientColor;

@property (nonatomic, assign) NSInteger selectedIndex;

@property (nonatomic, weak) IBOutlet id <YAScrollSegmentControlDelegate> delegate;

- (id)initWithFrame:(CGRect)frame;

- (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state;
- (void)setTitleColor:(UIColor *)color forState:(UIControlState)state;
- (void)setFont:(UIFont *)font;

@end

@protocol YAScrollSegmentControlDelegate <NSObject>

@required

- (void)didSelectItemAtIndex:(NSInteger)index;

@end

