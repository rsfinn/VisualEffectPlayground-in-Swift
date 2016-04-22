# VisualEffectPlayground-Swift
#### A Swift version of the VisualEffectPlayground sample code

When searching for information on implementing vibrancy effects and NSVisualEffectView, developers often find references to the VisualEffectPlayground sample code presented by Apple at WWDC 2014. However, they soon quickly discover that Apple pulled the sample code from the Apple Developer site.  Perhaps the application was thrown together for WWDC and didn't meet the usual standard for Apple sample code; however, to date Apple has not seen fit to post any replacement. And so the search continues.

During my own search, I discovered that a Xamarin engineer named Oleg Demchenko had ported the sample code to Mono and posted it to [the Xamarin samples site](https://developer.xamarin.com/samples/mac/yosemite%5CVisualEffectPlayground/). In order to get a working sample application, I decided to port this code back to Swift.  

**DISCLAIMER:** I don't know C# and I'm still learning Swift. Nevertheless, the resulting application appears to perform as expected (although I haven't made an exhaustive test).  I will certainly consider any pull requests.

## License

Oleg's port was released under the MIT license, so I have done the same for my code. Presumably Apple's usual sample code license applies to the components derived directly from the original sample (such as the .xib files and images).

## References

The online video and slides for the original Apple presentation can be found at the [WWDC 2014 Videos page](https://developer.apple.com/videos/play/wwdc2014/220/), and a transcript can be found on the [ASCIIwwdc website](http://asciiwwdc.com/2014/sessions/220).
