//    DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//    Version 2, December 2004
//
//    Copyright (C) 2013-2015 KIM TAE JUN <korean.darren@gmail.com>
//
//    Everyone is permitted to copy and distribute verbatim or modified
//    copies of this license document, and changing it is allowed as long
//    as the name is changed.
//
//    DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
//
//    0. You just DO WHAT THE FUCK YOU WANT TO.

#import "DRNSnackBar.h"
#import "DRNSnackBarView.h"
#import "DRNSnackBarManager.h"

#define CGRectSetY(rect, y) CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height)

static const CGFloat DRNSnackBarShortDelay = 2.0f;

@implementation DRNSnackBar

- (instancetype)init
{
    self = [super init];
    if (self) {
        _view = [[DRNSnackBarView alloc] init];
    }
    return self;
}

- (void)show
{
    [[DRNSnackBarManager defaultManager] addSnackBar:self];
}

+ (id)makeText:(NSString *)text
{
    return [DRNSnackBar makeText:text delay:0 duration:DRNSnackBarShortDelay];
}

+ (id)makeText:(NSString *)text duration:(NSTimeInterval)duration
{
    return [DRNSnackBar makeText:text delay:0 duration:duration];
}

+ (id)makeText:(NSString *)text delay:(NSTimeInterval)delay duration:(NSTimeInterval)duration
{
    DRNSnackBar *snackBar = [[DRNSnackBar alloc] init];
    snackBar.text = text;
    snackBar.delay = delay;
    snackBar.duration = duration;
    
    return snackBar;
}

#pragma mark - Setter

- (void)setText:(NSString *)text
{
    _view.messageLabel.text = text;
}
- (NSString *)text
{
    return _view.messageLabel.text;
}

#pragma mark - NSOperation Overriding

- (BOOL)isConcurrent
{
    return YES;
}

- (void)start
{
    if(![NSThread isMainThread])
    {
        [self performSelectorOnMainThread:@selector(start)
                               withObject:nil
                            waitUntilDone:NO];
        return;
    }
    [super start];
}

- (void)main
{
    [self willChangeValueForKey:@"isExecuting"];
    
    _isExecuting = YES;
    
    [self didChangeValueForKey:@"isExecuting"];
    
    dispatch_async(dispatch_get_main_queue(), ^{ // Non-main thread cannot modify user interface
        [_view layoutSubviews];
        _view.frame = CGRectSetY(_view.frame, [UIScreen mainScreen].bounds.size.height);
        
        [[[UIApplication sharedApplication] keyWindow] addSubview:_view];
        [UIView animateWithDuration:0.5 delay:_delay options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            _view.frame = CGRectSetY(_view.frame, [UIScreen mainScreen].bounds.size.height - _view.frame.size.height);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:_duration animations:^{
                _view.alpha = 1.0001;
            } completion:^(BOOL finished) {
                [self finish];
                [UIView animateWithDuration:0.5 animations:^{
                    _view.frame = CGRectSetY(_view.frame, [UIScreen mainScreen].bounds.size.height);
                }];
            }];
        }];
    });
}

- (void)finish
{
    [self willChangeValueForKey:@"isExecuting"];
    [self willChangeValueForKey:@"isFinished"];
    
    _isExecuting = NO;
    _isFinished = YES;
    
    [self didChangeValueForKey:@"isExecuting"];
    [self didChangeValueForKey:@"isFinished"];
}

- (BOOL)isExecuting
{
    return _isExecuting;
}

- (BOOL)isFinished
{
    return _isFinished;
}

@end
