# i9xp Ecommerce Mobile

A Flutter project application that allow users to interact with the i9xp-commerce experience.  🚀

![](https://github.com/andreciornavei/images/blob/master/i9xp_commerce/i9xp_commerce.gif?raw=true)

## Overview

This project was created with the purpose to test my habilities with flutter creating a simple flux of ecommerce app, navigating between Products, Product Details and Cart, using good pratices, patterns and concepts. 

---
## Technologies

This project was developed with the following technologies:

- [Flutter][flutter] - As a platform of development. 
- [MockAPI][mockapi] - As a mockable data to be consumed with api.
- [GetX][getx] - As a State Manager.
- [Sqlite][sqlite] - As a local database to persist data.

---
## Features 

- List categories, campaigns and products on homepage.
- Show product details.
- Share product in other apps.
- Add selected product to cart in local database.
- Show cart with all products placed in.
- Update quantity of products in cart.
- Remove product from cart.
- Calculation of total order.
- Place order (remove all items from local database to start again).

---
## Building

First, to build it and test in your phone or emulator, you will need to have the flutter installed and configured in your computer, in general do it is very simple, so do not be worry. 

_Follow the documentation about flutter to install: [click here][flutter_install]._

In time, this application was developed with the most recent libraries developed for flutter, so, be sure to have the most recent version of flutter to support it.

In second place you will need to have an emulator to build a debug mode app and test it, but when you install flutter it guides you to have this alerady installed and configured in your computer. But if you want to test the app in your phone (I preffer to do it to have a better experiences over development), so you can plug-in your phone over USB connection and make sure to have the developer mode enable in your phone configurations (For Android, that is what i use to develop for now). 

_As a trick to test over WiFi connection, when you install Android Studio (Needed for develop on android mode and explained on flutter install documentation.) you got a command called `adb`, this command can enable computer to accept a phone connection over WiFi, so follow this:_

_With a phone plugged in USB (for the first time) and in the same wifi connection of computer, type in terminal:_
```bash
$ adb tcpid 5555
```

_After that your phone will be enabled to connect to computer, so to connect just type:_
```bash
$ adb connect 192.168.x.x 5555
```
_where `192.168.x.x` needs to be the ip of your phone on network._

Ok, now that you already have a phone or emulator configured and ready to receive our application, you need to run the follow command to build a debug app and install.

```bash
$ flutter run
```

_It will install a debug mode of application in your phone, in this moment, pay attention for Android because it show a little window to allow the installation and it hides after 10 seconds, so watch your phone._

Well, in this moment you should have see the app running in your phone or emulator and can enjoy it, but if you want to build the app (to publish or have the best performance of flutter in your phone), i recommend you to follow [this link][flutter_build] that guides you step-by-step, from generatin your keystore until create your appbundle.


---

## Congradulations, You're done._

I hope this documentation has been made clear and help you to build the application and see it in your hands.

---

## License

[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](LICENSE)

Copyright (c) 2020 André Ciornavei

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.



[flutter]: https://flutter.dev/
[flutter_install]: https://flutter.dev/docs/get-started/install/
[flutter_build]: https://flutter.dev/docs/deployment/android/
[mockapi]: https://www.mockapi.io/
[getx]: https://pub.dev/packages/get/
[sqlite]: https://pub.dev/packages/sqflite/