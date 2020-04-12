
#import "Narratiive.h"
#import "EmTracker.h"

@implementation Narratiive

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE();

RCT_REMAP_METHOD(sharedInstance, resolver:(RCTPromiseResolveBlock)resolve) {
    resolve([EmTracker sharedInstance]);
}

RCT_EXPORT_METHOD(configure:(NSString *)appName tld:(NSString *)tld sdkKey:(NSString *)key) {
    [[EmTracker sharedInstance] configure:appName
                                      tld:tld
                                   sdkKey:key];
}

RCT_EXPORT_METHOD(trackURL:(NSURL *)url) {
    [[EmTracker sharedInstance] trackURL:url];
}

RCT_EXPORT_METHOD(trackContent:(NSString *)content) {
    [[EmTracker sharedInstance] trackContent:content];
}

RCT_EXPORT_METHOD(trackDefault) {
    [[EmTracker sharedInstance] trackDefault];
}


@end
  
