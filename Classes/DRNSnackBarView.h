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

@class DRNSnackBarAction;

@interface DRNSnackBarView : UIView

@property (strong, nonatomic) UILabel *messageLabel;
@property (strong, nonatomic, readonly) UIButton *actionButton;
@property (strong, nonatomic) DRNSnackBarAction *action;

@end
