/*
 The MIT License (MIT)
 
 Copyright (c) 2013 Clover Studio Ltd. All rights reserved.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

#import <QuartzCore/QuartzCore.h>
#import "HUSelectedTableViewCellVew.h"
#import "UIImage+Aditions.h"

@implementation HUSelectedTableViewCellVew

- (id)initWithFrame:(CGRect)frame withHeight:(int) height
{
    
    CGRect cellFrame = CGRectMake(0,0,frame.size.width,frame.size.height);
    
    self = [super initWithFrame:cellFrame];
    
    if (self) {
        
        /*
        UIColor *gradientColorTop = [UIColor colorWithRed:(202/255.0) green:(255/255.0) blue:(232/255.0) alpha:1];
        UIColor *gradientColorBottom = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1];
        
        UIView* gradientView = [[UIView alloc] init];
        gradientView.frame = CGRectMake(
                                        0,
                                        0,
                                        self.width,
                                        height
                                        );
        
        CAGradientLayer *gradient = [CAGradientLayer layer];
        
        gradient.startPoint = CGPointMake(0, 0.5);
        gradient.endPoint = CGPointMake(0.2, 0.5);
        
        gradient.frame = gradientView.bounds;
        gradient.colors = [NSArray arrayWithObjects:(id)[gradientColorTop CGColor],(id)[gradientColorBottom CGColor], nil];
        [gradientView.layer insertSublayer:gradient atIndex:0];
        [self addSubview:gradientView];
        */
        
        UIColor *greenColor = [UIColor colorWithRed:(0/255.0) green:(255/255.0) blue:(143/255.0) alpha:1];
        UIColor *redColor = [UIColor colorWithRed:(255/255.0) green:(32/255.0) blue:(93/255.0) alpha:1];
        UIView *accentView = [[UIImageView alloc] initWithImage:[UIImage imageWithColor:[UIColor whiteColor] andSize:CGSizeMake(320, 3)]];
        accentView.frame = CGRectMake(
                                      0,
                                      0,
                                      self.width,
                                      height
                                      );
        
        accentView.layer.borderColor = redColor.CGColor;
        accentView.layer.borderWidth = 1.0f;
        

        [self addSubview:accentView];
        
        self.backgroundColor = [UIColor whiteColor];
        
        
        
    }
    return self;
}


@end