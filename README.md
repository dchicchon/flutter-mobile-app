# Mobile_app

Flutter Project for Approachable Geeks

## Screenshots
<figure>
    <img src="https://i.imgur.com/SvLMRK0.png" alt='drawing' width='300' >
    <figcaption>Main Profile Screen</figcaption>
</figure>

## Getting Started

To run this app, you must have the following applications installed. There's alot of good documentation online to download these 2 applications to Windows, Linux, and IOS.
- [Visual Studio Code](https://code.visualstudio.com/)
- [Flutter](https://flutter.dev/docs/get-started/install)

Once VS Code is downloaded and have added the Flutter SDK to PATH, be sure to download the Flutter and Dart extensions as well to be able to run the applications.

- Adding the Flutter path for MacOS can be a hassle. If theres any trouble adding it, please refer to [this](https://www.youtube.com/watch?v=9GuzMsZQUYs&ab_channel=FlutterExplained) tutorial

## Running Android
1. In order to use the Android Emulator, you must download [Android Studio](https://developer.android.com/studio/?gclid=Cj0KCQjwmcWDBhCOARIsALgJ2Qe_WACBGbq_Jl3Wcj5VxMz-qZLS2NdbG3Td5SMJu0qWk2ATcqMjzUAaArFGEALw_wcB&gclsrc=aw.ds)
2. After starting a `Flutter` project in VS Code, you can run `Flutter find devices` in the command pallete to select the Android Emulator.
3. To begin debugging mode (start the application), make sure press `F5` on the keyboard.

For reference, I followed [this](https://www.youtube.com/watch?v=ly0hAtV7EBg&list=PLzMcBGfZo4-knQWGK2IC49Q_5AnQrFpzv&ab_channel=TechWithTim) tutorial for flutter on Android

## Running IOS
1. Make sure to have [XCode](https://developer.apple.com/xcode/) downloaded on your machine
2. Open XCode at least once to sign the license agreement
3. 

## Production Notes

- do not use Expanded around GestureDetector or else child CircleAvatar within GestureDetector will not be shown

### Common Errors to fix
 - Renderflex overflowed by 5.1 pixels on the bottom
 - System UI is not responding (might be a android emulator thing with Studio)
 - Incorrect use of Parent Data Widget