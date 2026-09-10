#import "PBRootViewController.h"

@interface PBRootViewController ()<UIWebViewDelegate>
@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, retain) UITextField *textget;
@end
@implementation PBRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    self.webView.scalesPageToFit = YES;
    self.webView.delegate = self;
    [self.view addSubview:self.webView];
    self.view.backgroundColor = [UIColor whiteColor];
    [self UIs];
}
- (void)UIs {
    self.Textget = [[UITextField alloc] initWithFrame:CGRectMake(20,100,80,40)];
    self.Textget.borderStyle = UITextBorderStyleBezel;
    self.Textget.placeholder = @"input URL...";
    self.Textget.keyboardType = UIKeyboardTypeDefault;
    [self.view addSubview:self.Textget];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(150, 160, 280, 50);
    [button setTitle:@"Connect" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)buttonTapped:(UIButton *)sender {
        NSString *hasaba = self.Textget.text;
        NSURL *url = [NSURL URLWithString:hasaba];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
}
// iOS 6以降の回転制御方法（回転を許可しない）
- (BOOL)shouldAutorotate {
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

@end
