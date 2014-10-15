#import "CDVUpdateApp.h"

@implementation CDVUpdateApp

- (void)getCurrentVerInfo:(CDVInvokedUrlCommand*)command
{

    NSString* callbackId = command.callbackId;
    NSString* version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];

    CDVPluginResult* pluginResult = nil;
    NSString* javaScript = nil;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:version];
    javaScript = [pluginResult toSuccessCallbackString:callbackId];

    [self writeJavascript:javaScript];
}

@end