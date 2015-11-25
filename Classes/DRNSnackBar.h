//    DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//    Version 2, December 2004
//
//    Copyright (C) 2015 KIM TAE JUN <korean.darren@gmail.com>
//
//    Everyone is permitted to copy and distribute verbatim or modified
//    copies of this license document, and changing it is allowed as long
//    as the name is changed.
//
//    DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
//
//    0. You just DO WHAT THE FUCK YOU WANT TO.

#import <UIKit/UIKit.h>

#import "DRNSnackBarAction.h"

@class DRNSnackBarView;
@class DRNSnackBarAction;

@interface DRNSnackBar : NSOperation
{
    BOOL _isExecuting;
    BOOL _isFinished;
}

@property (copy) void (^buttonHandler)(void);

@property (strong, nonatomic) DRNSnackBarView *view;
@property (nonatomic) DRNSnackBarAction *action;

@property (weak, nonatomic) NSString *text;
@property (nonatomic) NSTimeInterval delay;
@property (nonatomic) NSTimeInterval duration;

+ (id)makeText:(NSString *)text;
+ (id)makeText:(NSString *)text duration:(NSTimeInterval)duration;
+ (id)makeText:(NSString *)text delay:(NSTimeInterval)delay duration:(NSTimeInterval)duration;

@end
