"use strict";
// @ts-ignore
var exec = require('cordova/exec');
var CordovaImageSaveToGallery = /** @class */ (function () {
    function CordovaImageSaveToGallery() {
    }
    CordovaImageSaveToGallery.downloadFromUrl = function (url, successCallback, failureCallback) {
        if (url && url.trim() == '') {
            // Do nothing
            return;
        }
        var args = [url];
        exec(successCallback, failureCallback, "CordovaImageSaveToGallery", "downloadFromUrl", args);
    };
    return CordovaImageSaveToGallery;
}());
// @ts-ignore
module.exports = CordovaImageSaveToGallery;
