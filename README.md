# WHPhotosSaveAlbum

[![CI Status](http://img.shields.io/travis/wenhe-liu/WHPhotosSaveAlbum.svg?style=flat)](https://travis-ci.org/wenhe-liu/WHPhotosSaveAlbum)
[![Version](https://img.shields.io/cocoapods/v/WHPhotosSaveAlbum.svg?style=flat)](http://cocoapods.org/pods/WHPhotosSaveAlbum)
[![License](https://img.shields.io/cocoapods/l/WHPhotosSaveAlbum.svg?style=flat)](http://cocoapods.org/pods/WHPhotosSaveAlbum)
[![Platform](https://img.shields.io/cocoapods/p/WHPhotosSaveAlbum.svg?style=flat)](http://cocoapods.org/pods/WHPhotosSaveAlbum)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

WHPhotosSaveAlbum is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "WHPhotosSaveAlbum"
```
```objective-c  
    //传一个image进去就可以将image保存到相册，并创建一个属于自己app的相簿
    [WHPhotoAlbumTool savePhotoToAlbum:self.imageView.image];
```
## Author

wenhe-liu, liu.wen.he@chrjdt.com

## License

WHPhotosSaveAlbum is available under the MIT license. See the LICENSE file for more info.
