#import "PBRootViewController.h"

@implementation PBRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Parroting-back";
    
    // iOS 6スタイルの背景色
    self.view.backgroundColor = [UIColor whiteColor];
}

// iOS 6以降の回転制御方法
- (BOOL)shouldAutorotate {
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

@end
