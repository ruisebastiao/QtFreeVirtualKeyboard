# QtFreeVirtualKeyboard
A QML based on screen virtual keyboard for embedded QML applications. 

The following video shows the QtFreeVirtualKeyboard running on my Beaglebone Black:

[![Video Beaglebone Keyboard](doc/vk-beaglebone-video.jpg)](https://www.youtube.com/watch?v=TdzZyIXbn4U)

This video is a screen capture of the QtFreeVirtualKeyboard running on a Windows PC:

[![Video Qt Freee Virtual Keyboard](doc/vk-screenshot-video.png)](https://www.youtube.com/watch?v=LqVUipeb96g)

As soon as you implement your first QML application for an embedded touchscreen device, you will notice, that the open source version of Qt lacks a virtual on screen keyboard. I'm an experienced Qt developer, but I'm a complete newbie when it comes to QML programming. I'm a great fan of the [Beaglebone Black](http://beagleboard.org/BLACK) embedded Linux device and I just ordered a [capacitive touchscreen device](https://www.kickstarter.com/projects/1924187374/manga-screen-multi-touch-43-lcd) for my bone. I started learning QML to create an example application for my Beaglebone. I quickly realized that an important essential piece was missing for entering text and values: a virtual on screen keyboard for embedded QML applications - that means for applications without a window manager like X11 or Wayland.

There is a nice solution for Qt Enterprise version: [Qt Virtual Keyboard](http://doc.qt.io/QtVirtualKeyboard/index.html). The documentation also comes with a nice [technical guide](http://doc.qt.io/QtVirtualKeyboard/technical-guide.html) that shows how they implemented the virtual keyboard. They implemented `QPlatformInputContextPlugin` and `QPlatformInputContext` interfaces. I googled a little bit to find a similar open source solution and found the fantastic blog post from [Tomasz Olszak](http://tolszak-dev.blogspot.de/2013/04/qplatforminputcontext-and-virtual.html). He did a virtual keyboard mockup for Qt applications on systems with a window manager (Windows or Linux Desktop). Interesting for me was the fact, that he also implemented `QPlatformInputContextPlugin` and `QPlatformInputContext` to provide its on screen keyboard. So it seems to be the right way for implementing a virtual keyboard. The UI of Tomasz implementation was completely QML based - so it was perfectly suited for integration into QML applications.

Long story short, I simply copied his code and modified it, to enable integration into embedded QML applications without window manager. I added a little bit of functionality (i.e. character preview popup, or automatic scrolling of flickable elements if keyboard overlaps focused input element). So I have to say a big thank you to Tomasz Olszak for providing a nice virtual keyboard mockup. The example application in examples/qmlapp has been copied from the [Qt Virtual Keyboard example](http://doc.qt.io/QtVirtualKeyboard/qtvirtualkeyboard-enterprise-virtualkeyboard-virtualkeyboard-example.html). I only did some minor modifications to run the example with my Virtual Keyboard implementation instead of the Qt Enterprise Virtual Keyboard.

This implementation is far from feature complete. But I think it is a starting point for people that need to implement virtual keyboard support for QML applications. Keep in mind that I'm a QML newbie and that my QML is far from beeing perfect. So if you find something in my QML code that could be done better, then please tell me or send me a pull request.
