# Photo Viewer 
> This is an custom plugin created for MyMA.
> This plugin is intended to download a picture from an URL into IOS Photo library..

## How to Install

Cordova:
```bash
cordova plugin add https://github.com/valwinjose007/cordova-image-save-to-gallery.git
```

### Android
> Not implemented yet.

### iOS
> Available


### API

#### Download an image

```
declare var CordovaImageSaveToGallery: any;

CordovaImageSaveToGallery.downloadFromUrl('https://picsum.photos/200/300',(res)=>{
    //download success
},(err)=>{
    //error on download
});
```


### Versions  
(1.0.0) Initial version  
