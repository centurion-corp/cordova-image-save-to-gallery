// @ts-ignore
var exec = require('cordova/exec');

class CordovaImageSaveToGallery {

    public static downloadFromUrl(url: string, successCallback: any, failureCallback: any) {
        if (url && url.trim() == '') {
            // Do nothing
            return;
        }

        var args = [url];
    
        exec(successCallback, failureCallback, "CordovaImageSaveToGallery", "downloadFromUrl", args);
    }
}

// @ts-ignore
module.exports = CordovaImageSaveToGallery;