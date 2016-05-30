//
//  ViewController.h
//  EmailApp
//
//  Created by Mahaboobsab Nadaf on 24/05/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@interface ViewController : UIViewController<MFMailComposeViewControllerDelegate>

- (IBAction)showEmail:(id)sender;

@end

