//
//  WebView.h
//  WR_Welfare
//
//  Created by Sony Theakanath on 1/14/14.
//  Copyright (c) 2014 Sony Theakanath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewCustom : UIViewController <UIWebViewDelegate>{
    UIWebView *webview;
    NSMutableArray *interfaceArray;
}

@property (strong, nonatomic) IBOutlet UIWebView *webview;

-(void) setSelectedButton:(NSInteger)buttonindex;

@property (nonatomic, retain) NSMutableArray *interfaceArray;

@end
