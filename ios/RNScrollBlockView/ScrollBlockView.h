#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTView.h>

@class ScrollBlockView;

@interface ScrollBlockView : RCTView <UIGestureRecognizerDelegate>

@property (nonatomic) BOOL blocked;
@property (nonatomic) UIPanGestureRecognizer * panGestureRecognizer;

@end
