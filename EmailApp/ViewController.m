//
//  ViewController.m
//  EmailApp
//
//  Created by Mahaboobsab Nadaf on 24/05/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showEmail:(id)sender {
    
//    NSString *emailTitle = @"Test Email";
//    
//    NSString *messageBody = @"I love iOS Programming";
//    
//    NSArray *toRecipents = [NSArray arrayWithObject:@"mrnadaf2010@gmail.com"];
//    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc]init];
//    
//    mc.mailComposeDelegate = self;
//    
//    [mc setSubject:emailTitle];
//    
//    [mc setMessageBody:messageBody isHTML:NO];
//    
//    [mc setCcRecipients:toRecipents];
//    [self presentViewController:mc animated:YES completion:nil];
    
    
    
    if ([MFMailComposeViewController canSendMail])
    {
        NSLog(@"It can send Mail");
        
            // Email Subject
            NSString *emailTitle = @"Test Email";
            // Email Content
            NSString *messageBody = @"<h1>Learning iOS Programming!</h1>"; // Change the message body to HTML
            // To address
            NSArray *toRecipents = [NSArray arrayWithObject:@"support@appcoda.com"];
        
            MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
            mc.mailComposeDelegate = self;
            [mc setSubject:emailTitle];
            [mc setMessageBody:messageBody isHTML:YES];
            [mc setToRecipients:toRecipents];
        
            // Present mail view controller on screen
            [self presentViewController:mc animated:YES completion:NULL];
        
    }
    else
    {
        NSLog(@"It Cannot send mail");
    }
    
//    // Email Subject
//    NSString *emailTitle = @"Test Email";
//    // Email Content
//    NSString *messageBody = @"<h1>Learning iOS Programming!</h1>"; // Change the message body to HTML
//    // To address
//    NSArray *toRecipents = [NSArray arrayWithObject:@"support@appcoda.com"];
//    
//    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
//    mc.mailComposeDelegate = self;
//    [mc setSubject:emailTitle];
//    [mc setMessageBody:messageBody isHTML:YES];
//    [mc setToRecipients:toRecipents];
//    
//    // Present mail view controller on screen
//    [self presentViewController:mc animated:YES completion:NULL];
//  
}

  - (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(nullable NSError *)error {
  
  
      switch (result) {
          case MFMailComposeResultCancelled:
              NSLog(@"Message Sending Cancelled");
              break;
              
              case MFMailComposeResultFailed:
              NSLog(@"Message Sending Failed");
              break;
              
              case MFMailComposeResultSent:
              NSLog(@"Message Sent Sucsessfully...");
              break;
              
              case MFMailComposeResultSaved:
              NSLog(@"Message Saved Successfully");
              break;
              
          default:
              break;
      }
  
      [self dismissViewControllerAnimated:YES completion:nil];
  }
@end
