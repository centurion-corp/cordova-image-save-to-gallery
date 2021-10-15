/********* CordovaImageSaveToGallery.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CordovaImageSaveToGallery : CDVPlugin

- (void)downloadFromUrl:(CDVInvokedUrlCommand*)command;

@end

@implementation CordovaImageSaveToGallery
- (void)downloadFromUrl:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* imageUrl = [command.arguments objectAtIndex:0];
    NSLog(@"%@",imageUrl);
    @try {
        if (imageUrl != nil && [imageUrl length] > 0) {
            NSURL *url = [NSURL URLWithString:imageUrl];
            NSData *data = [NSData dataWithContentsOfURL:url];
            UIImage* imageData = [[UIImage alloc]initWithData:data];
            UIImageWriteToSavedPhotosAlbum(imageData, nil, nil, nil);
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        }else{
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
        }
    } @catch (NSException *exception) {
        NSLog(@"error");
        NSLog(@"%@",exception);
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
