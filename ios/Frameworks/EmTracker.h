//
//  EmTracker.h
//  EmTracker
//
//  Created by neha kanodia on 10/03/2015.
//  Cleanup by Darcy Laycock (sutto@sutto.net), 2016/2017.
//  Copyright (c) 2015-2017 Effective Measure International Pty Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EmTracker : NSObject

// Track Singleton.
+(EmTracker *)sharedInstance;

// SDK Key to enable tracking.
@property (nonatomic, copy) NSString *sdkKey;

// Name for your application.
@property (nonatomic, copy) NSString *appName;

// Valid top level domain name for impression tracking.
@property (nonatomic, copy) NSString *tld;

// Should we track via HTTPS - Disabled by default.
@property (nonatomic, assign) BOOL httpsEnabled;

// Show EffectiveMeasure logging on errors.
@property (nonatomic, assign) BOOL verbose;

-(void)configure:(NSString *)appName tld:(NSString *)tld sdkKey:(NSString *)key;

-(void)trackURL:(NSURL *)url;
-(void)trackContent:(NSString *)content;
-(void)trackDefault;

// LEGACY: trackDefault
-(void)getEmTracker;

// LEGACY: Default content param in page URL. Deprecated in favour of the track methods.
@property(nonatomic,strong) NSString *content;

// LEGACY: Enable HTTPS, please use httpsEnabled now.
@property(nonatomic,assign) BOOL security;

// LEGACY: compatibility with the sdkKey parma.
@property (nonatomic, copy) NSString *sdk_key;



@end
