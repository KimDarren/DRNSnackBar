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

#import "DRNSnackBarManager.h"

#import "DRNSnackBar.h"

@interface DRNSnackBarManager ()

@property (strong, nonatomic) NSOperationQueue *queue;

@end

@implementation DRNSnackBarManager

+ (instancetype)defaultManager
{
    static id manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[DRNSnackBarManager alloc] init];
        [[NSNotificationCenter defaultCenter] addObserver:manager
                                                 selector:@selector(deviceOrientaionDidChange:)
                                                     name:UIDeviceOrientationDidChangeNotification
                                                   object:nil];
    });
    
    return manager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _queue = [[NSOperationQueue alloc] init];
        _queue.maxConcurrentOperationCount = 1;
    }
    return self;
}

- (void)addSnackBar:(DRNSnackBar *)snackBar
{
    [_queue addOperation:snackBar];
}

#pragma mark - Observer

- (void)deviceOrientaionDidChange:(NSNotification *)notificatoin
{
    if (_queue.operationCount) {
        [[_queue.operations[0] view] layoutSubviews];
    }
}

@end
