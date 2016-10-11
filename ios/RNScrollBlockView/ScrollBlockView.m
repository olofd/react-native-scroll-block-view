#import "ScrollBlockView.h"

@implementation ScrollBlockView

@synthesize blocked = _blocked;
@synthesize panGestureRecognizer = _panGestureRecognizer;

- (id)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    _panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    _panGestureRecognizer.delegate = self;
    _panGestureRecognizer.enabled = YES;
    [self addGestureRecognizer:_panGestureRecognizer];

    _blocked = YES;
  }
  return self;
}

- (void)handlePan:(UIPanGestureRecognizer *)recognizer {
}

- (void)setBlocked:(BOOL)blocked
{
  _blocked = blocked;
  _panGestureRecognizer.enabled = _blocked;
}

@end
