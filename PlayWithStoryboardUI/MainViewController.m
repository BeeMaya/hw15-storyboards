#import "MainViewController.h"
#import "NSString+Utils.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passField;
@property (weak, nonatomic) IBOutlet UITextField *passconfirmField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor redColor]];
}


- (IBAction)valideateInput:(UITextField *)sender {

    BOOL isEmailValid = [self.emailField.text validateEmail];
    BOOL isPassValid = [self validatePassword: self.passField.text];
    BOOL isConfirmPassValid = [self.passconfirmField.text isEqualToString: self.passField.text];
    
    self.emailField.textColor = isEmailValid ? [UIColor greenColor] : [UIColor redColor];
    self.passField.textColor = isPassValid ? [UIColor blackColor] : [UIColor redColor];
    self.passconfirmField.textColor = isConfirmPassValid ? [UIColor blackColor] : [UIColor redColor];
    
    self.loginButton.enabled = isEmailValid && isPassValid && isConfirmPassValid;
    
}


- (BOOL)validatePassword:(NSString *)text {

    BOOL isLengthValid = text.length >6 &&  text.length<500;
    NSCharacterSet *capitalLetters = [NSCharacterSet uppercaseLetterCharacterSet];
    NSRange rangeCapital = [text rangeOfCharacterFromSet:capitalLetters];
    BOOL containsAtLeastOneCap = rangeCapital.location!=NSNotFound;
    
    return isLengthValid&&containsAtLeastOneCap;
}

@end
