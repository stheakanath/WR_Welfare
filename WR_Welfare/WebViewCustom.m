//
//  ViewController.m
//  Carillon Lite
//
//  Created by Sony Theakanath on 10/22/13.
//  Copyright (c) 2013 Sony Theakanath. All rights reserved.
//

#import "WebViewCustom.h"

@interface WebViewCustom ()

@end

@implementation WebViewCustom

@synthesize webview, interfaceArray;

- (void)viewDidLoad
{
    NSLog(@"test");
    CGSize screenSize = [self currentSize];
    CGFloat screenWidth = screenSize.width;
    CGFloat screenHeight = screenSize.height;

    interfaceArray = [[NSMutableArray alloc] initWithObjects:
                      [[UIWebView alloc] initWithFrame:CGRectMake(screenWidth, screenHeight, 0, 0)],
                      nil];
    for (UIView *view in interfaceArray)
        if(![view superview])
            [[self view] addSubview:view];
    
   // NSURLRequest *nsrequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.thecarillon.org"]];
    //[self.webview loadRequest:nsrequest];
    
    [self.navigationItem setTitle:@"West Coast"];
        [super viewDidLoad];
}

-(void) setSelectedButton:(NSInteger)buttonindex {
    if(buttonindex == 1) {
        NSURLRequest *nsrequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://bpr.bcp.org/wp-content/uploads/2014/other/westcoast.html"]];
        [self.webview loadRequest:nsrequest];
        [self.navigationItem setTitle:@"West Coast"];
        NSLog(@"one");
    } else if (buttonindex == 2) {
        NSURLRequest *nsrequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://bpr.bcp.org/wp-content/uploads/2014/other/uk.html"]];
        [self.webview loadRequest:nsrequest];
        [self.navigationItem setTitle:@"UK"];
        NSLog(@"2");
    } else if (buttonindex ==3 ) {
        NSURLRequest *nsrequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://bpr.bcp.org/wp-content/uploads/2014/other/central.html"]];
        [self.webview loadRequest:nsrequest];
        [self.navigationItem setTitle:@"Central Europe"];
        NSLog(@"3");
    }//Hi Mr. S
    //[self.navigationItem setTitle:@"West Coast"];
    //[webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.thecarillon.org"]]];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"Error : %@",error);
}

-(CGSize) currentSize
{
    return [self sizeInOrientation:[UIApplication sharedApplication].statusBarOrientation];
}

-(CGSize) sizeInOrientation:(UIInterfaceOrientation)orientation
{
    CGSize size = [UIScreen mainScreen].bounds.size;
    UIApplication *application = [UIApplication sharedApplication];
    if (UIInterfaceOrientationIsLandscape(orientation))
    {
        size = CGSizeMake(size.height, size.width);
    }
    if (application.statusBarHidden == NO)
    {
        size.height -= MIN(application.statusBarFrame.size.width, application.statusBarFrame.size.height);
    }
    return size;
}

-(void)viewDidDisappear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter]removeObserver:self name:UIDeviceOrientationDidChangeNotification object:nil];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
