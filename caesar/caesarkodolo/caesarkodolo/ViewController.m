//
//  ViewController.m
//  caesarkodolo
//
//  Created by Patrik Gergye on 2018. 11. 25..
//  Copyright © 2018. Patrik Gergye. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label,szovegmezo,eltolasmezo;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)button:(id)sender {
    
    NSString * szoveg = szovegmezo.text;
    if(szoveg.length==0)
    {
        label.text=@"";
    }
    NSString * eltolasstring = eltolasmezo.text;
    int eltolas = [eltolasstring intValue];
    
    NSMutableString *str = [[NSMutableString alloc] init];
    for (int i = 0; i < szoveg.length; i++) {
        [str insertString:@" " atIndex:i];
    }
    
    for (int i = 0; i < szoveg.length; i++) {
        //if i + shift results in going out of bounds
        if (i+eltolas > szoveg.length-1) {
            int wrapIndex = abs((int)(i+eltolas - szoveg.length));
            [str insertString:[NSString stringWithFormat:@"%c", [szoveg characterAtIndex:i]] atIndex:wrapIndex];
        } else {
            [str insertString:[NSString stringWithFormat:@"%c", [szoveg characterAtIndex:i]] atIndex:i+eltolas];
        }
    }
    
    NSString *result = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    label.text=result;
    
    
    
}
@end
