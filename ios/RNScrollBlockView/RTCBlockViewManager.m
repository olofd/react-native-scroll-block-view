#import <Foundation/Foundation.h>
#import "ScrollBlockView.h"
#import "RCTViewManager.h"

@interface RCTScrollBlockViewManager: RCTViewManager
@end

@implementation RCTScrollBlockViewManager

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(blocked, BOOL)

- (UIView *)view
{
  return [[ScrollBlockView alloc] init];
}

@end
