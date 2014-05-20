#import "HomeViewController.h"
#import <MessageUI/MessageUI.h>

@implementation HomeViewController

-(void)viewDidLoad{
    [super viewDidLoad];
}

- (IBAction)mailClicked:(id)sender {
    MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
    mailer.mailComposeDelegate = self;
    [mailer setSubject:@"CSV File"];
    
    NSString *text = @"item1, item2, item3\n item4, item5, item6\n item7, item8, item9";
    
    NSData *myData = [text dataUsingEncoding:NSUTF8StringEncoding];
    
    [mailer addAttachmentData:myData mimeType:@"text/csv" fileName:@"SampleCSV.csv"];
    
    [self presentViewController:mailer animated:YES completion:nil];
    
}

@end