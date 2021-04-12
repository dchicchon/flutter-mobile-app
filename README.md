# Mobile_app

Flutter Project for Approachable Geeks

## Screenshots
-----------------------
<figure>
    <img src="https://i.imgur.com/SvLMRK0.png" alt='drawing' width='300' >
    <figcaption>Main Profile Screen</figcaption>
</figure>

## Getting Started
------------------

To run this app, you must have the following installed. There's alot of good documentation online to download these to Windows, Linux, and iOS. 

- [Git](https://git-scm.com/) (in order to clone this repository)
- [Visual Studio Code](https://code.visualstudio.com/) (there are guides for other code editors, but this is the one I used)
- [Flutter](https://flutter.dev/docs/get-started/install)

Download these as well depending on what platform you are developing for

- [XCode](https://developer.apple.com/xcode/) (for iOS development)
- [Android Studio](https://developer.android.com/studio/?gclid=Cj0KCQjwmcWDBhCOARIsALgJ2Qe_WACBGbq_Jl3Wcj5VxMz-qZLS2NdbG3Td5SMJu0qWk2ATcqMjzUAaArFGEALw_wcB&gclsrc=aw.ds) (for Android Development)
## Adding Flutter to Environment Variables

After downloading the `Flutter` SDK, it is important that you add it to your `PATH` on your machine. You can find the instructions for your machine on the [Flutter](https://flutter.dev/docs/get-started/install) website, but I will leave instructions here as well.

### Windows
---------------------------
1. Navigate from the terminal to the `Flutter` SDK directory and type in `pwd` to get the directory path. Copy this path.

2. From the search bar, enter `env` and select `Edit environment variables for your account`
<br/>
<figure>
    <img src="https://i.imgur.com/jJvN7re.png" alt='drawing' width='450' >
</figure>

3. Add the copied path to your `Path` variable by pressing `New` and restart your terminal.
<figure>
    <img src="https://i.imgur.com/ZUfsDM3.png" alt='drawing' width='450' >
</figure>

4. Now you should have access to `Flutter` command line tools
<figure>
    <img src="https://imgur.com/6xaaOvX.png" alt='drawing' width='500' >
</figure>




### iOS
---------------------------
1. From the terminal, enter the directory where you have the `Flutter` SDK and enter `pwd` to get the directory path and copy it.

2. Use the command `echo $SHELL` in your terminal to see which shell that you are using. If you are using Bash, create a new text file by using the command ` touch $HOME/.bash_profile`. If using Z shell, create a new text file by using the command `touch $HOME/.zshrc`. 

3. Add to the file by using the command `nano $HOME/[your . file]` and paste in the path to the `Flutter` SDK. Be sure to save this text file.

4. Run the command `source $HOME/.<rc file>` in the terminal to refresh the current window.

5. Verify that `flutter/bin` directory is now in your `PATH` by running `echo $PATH`.

<br>


Once VS Code is downloaded and have added the Flutter SDK to PATH, be sure to download the `Flutter` and `Dart` extensions as well to be able to run the applications.

- If theres any trouble adding to your `PATH` in macOS, please refer to [this](https://www.youtube.com/watch?v=9GuzMsZQUYs&ab_channel=FlutterExplained) tutorial

<br> 

## Running the project

Running this project is dependent on what device that you are using. However, at any point feel free to run the command `flutter doctor` in the terminal to check if you need anything additional for `Flutter`.

<figure>
    <img src="https://imgur.com/jceTzJx.png" alt='drawing' width='500' >
</figure>

Please run the command `flutter pub get` in order to get the packages in included in this project (image_picker).

### Android Simulator
------------------------
1. In order to use the Android Emulator, you must download [Android Studio](https://developer.android.com/studio/?gclid=Cj0KCQjwmcWDBhCOARIsALgJ2Qe_WACBGbq_Jl3Wcj5VxMz-qZLS2NdbG3Td5SMJu0qWk2ATcqMjzUAaArFGEALw_wcB&gclsrc=aw.ds) as mentioned in section `Getting Started`.
2. After open the `Flutter` project in VS Code, you can run `Flutter find devices` in the `command pallete` to select the Android Emulator. You can also run `flutter emulators` in the terminal to see which emulators are available. To select an emulator in the terminal, run the command `flutter emulators --launch <emulator id>`
3. To run the project, enter the command `flutter run`. You can also run debugging mode for the application by pressing `F5`.

For reference, I followed [this](https://www.youtube.com/watch?v=ly0hAtV7EBg&list=PLzMcBGfZo4-knQWGK2IC49Q_5AnQrFpzv&ab_channel=TechWithTim) tutorial for flutter on Android

### iOS Simulator
-------------------------
1. In order to have the iPhone Simulator, make sure to have [XCode](https://developer.apple.com/xcode/) downloaded on your machine and open it at least once to sign the license agreement. (You must install the latest version of XCode to use Flutter)
2. To have access to XCode command line tools, be sure to run the following in the command line
    ```
    sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
    sudo xcodebuild -runFirstLaunch
    ```
    If you have the `XCode-beta.app`, be sure to replace `Xcode.app` with `Xcode-beta.app`.
3. Open the iOS Simulator by running the command in the terminal `open -a Simulator`. 
4. Enter the project directory and run the command `flutter run`


For reference, I followed [this](https://www.youtube.com/playlist?list=PLSzsOkUDsvdtl3Pw48-R8lcK2oYkk40cm) tutorial for flutter on iOS

## Running on iOS Device
--------------------------
To run the project on an iOS please follow the additional steps stated in the `Flutter` [guide](https://flutter.dev/docs/get-started/install/macos). Although it isn't stated in this guide, if you want to see your project on iOS version +14, you must run the command `flutter run --release` in order to deploy on iOS device.

I followed [this answer](https://stackoverflow.com/questions/49530673/build-flutter-app-in-release-mode-for-ios/65267640#65267640) in order to run on my device.

If you happen to get the message  `Unable to verify developer`, be sure to enter your `System Preferences` > `Security & Privacy` > `General`. There you should be able to allow your system to trust the files in the `Flutter` SDK.

## Production Notes

- do not use Expanded around GestureDetector or else child CircleAvatar within GestureDetector will not be shown

## Common Errors to fix
 - Renderflex overflowed by 5.1 pixels on the bottom [Solution](https://stackoverflow.com/questions/67027187/need-to-use-expanded-widget-to-avoid-overflow-but-am-not-getting-the-desired-si?noredirect=1#comment118478298_67027187)
 - System UI is not responding (might be a android emulator thing with Studio)
 - Incorrect use of Parent Data Widget