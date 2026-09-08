#import "PBRootViewController.h"

@interface PBRootViewController ()
@property (nonatomic, strong) UITextField *Textget;
@end
@implementation PBRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self UIs];
}
- (void)UIs {
    self.Textget = [[UITextField alloc] initWithFrame:CGRectMake(20,100,80,40)];
    self.Textget.borderStyle = UITextBorderStyleBezel;
    self.Textget.placeholder = @"input text...";
    self.Textget.keyboardType = UIKeyboardTypeDefault;
    [self.view addSubview:self.Textget];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(150, 100, 280, 50);
    [button setTitle:@"Plese Tap" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)buttonTapped:(UIButton *)sender {
        NSString *hasaba = self.Textget.text;
        //アラート処理
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"result"
                                                  message:[NSString stringWithFormat:@"🐦: %@", hasaba]
                                                  delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        [alert show];
}
// iOS 6以降の回転制御方法（回転を許可しない）
- (BOOL)shouldAutorotate {
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

@end
