//
//  ViewController.m
//  WR_Welfare
//
//  Created by Sony Theakanath on 1/14/14.
//  Copyright (c) 2014 Sony Theakanath. All rights reserved.
//

#import "ViewController.h"
#import "WebViewCustom.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender
{

    [self performSegueWithIdentifier:@"MySegue" sender:sender];
    
   // WebViewCustom *yourVw=[[WebViewCustom alloc]initWithNibName:@"ViewController_iPad" bundle:nil];
    //[[self.view contentView]addSubview:[yourVw view]];
}

// This will get called too before the view appears
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"MySegue"]) {
        
        // Get destination view
        WebViewCustom *vc = [segue destinationViewController];
        
        // Get button tag number (or do whatever you need to do here, based on your object
        NSInteger tagIndex = [(UIButton *)sender tag];
        
        // Pass the information to your destination view
        [vc viewDidLoad];
        [vc setSelectedButton:tagIndex];
    }
}


@end
