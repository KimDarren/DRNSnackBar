DRNSnackBar
======================
![CocoaPods](https://cocoapod-badges.herokuapp.com/v/DRNSnackBar/badge.png)

Material-style snack bar for iOS.

> _Inspired by [JLToast](https://github.com/devxoul/JLToast) by [devxoul](https://github.com/devxoul)_

Screenshots
----

`DRNSnackBar` supports not only iPhone but also iPad.

* iPad landscape

![iPadLandscape](http://koreandarren.com/snackbar/ipadLandscape.png)

* iPad portrait

![iPadPortrait](http://koreandarren.com/snackbar/ipadPortrait.png)

* iPhone

![iPhonePortrait](http://koreandarren.com/snackbar/iphone.png)

Usage
-----

Import `DRNSnackBar`.

```objc
#import <DRNSnackbar/DRNSnackBar.h>
```

How to show snack bar with text

```objc
[[DRNSnackBar makeText:@"Text"] show];
```

Also, you can set both delay and duration.

* Make text with duration

```objc
[[DRNSnackBar makeText:@"Text"
              duration:.3f] show];
```

* Make text with delay and duration

```objc
[[DRNSnackBar makeText:@"Text"
                 delay:1.0f
              duration:.3f] show];
```

To do
-----

* Action Button.

License
-------

`DRNSnackBar` is under [WTFPL](http://www.wtfpl.net/). You can do what the fuck you want with this shit. See [LICENSE](LICENSE) file for more info.
