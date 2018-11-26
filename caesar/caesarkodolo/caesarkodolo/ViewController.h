//
//  ViewController.h
//  caesarkodolo
//
//  Created by Patrik Gergye on 2018. 11. 25..
//  Copyright © 2018. Patrik Gergye. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *szovegmezo;


@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)button:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *eltolasmezo;

@end

