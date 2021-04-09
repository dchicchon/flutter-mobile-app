import 'package:flutter/material.dart';
import 'package:mobile_app/About.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:mobile_app/PhoneNumber.dart';
import 'Email.dart';
import 'Name.dart';
import 'Photo.dart';

// State
class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// Actual widget build
class _MyHomePageState extends State<MyHomePage> {
  String name = "Micah Smith";
  String email = "micahsmith@gmail.com";
  String phoneNumber = "(208)206-5039";
  String about =
      "Hi my name is Micah Smith. I am from Mesa but go to school in Salt Lake City";
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      this._image = File(pickedFile.path);
    });
    print(this._image);
  }

  void submitPhoto() {
    _showPicker(context);
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
              child: Container(
                  child: Wrap(
            children: [
              ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text("Photo Library"),
                  onTap: () {
                    getImage();
                    Navigator.of(context).pop();
                  }),
            ],
          )));
        });
  }

  void newName(String fname, String lname) {
    this.setState(() {
      name = fname + " " + lname;
      this.name = name;
    });
  }

  void newEmail(String email) {
    this.setState(() {
      this.email = email;
    });
  }

  void newPhoneNumber(String phoneNumber) {
    this.setState(() {
      this.phoneNumber = phoneNumber;
    });
  }

  void newAbout(String aboutText) {
    this.setState(() {
      this.about = aboutText;
    });
  }

  void updatePhoto() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Photo(this.submitPhoto)));
  }

  void updateName() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Name(this.newName)));
  }

  void updateEmail() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Email(this.newEmail)));
  }

  void updatePhoneNumber() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PhoneNumber(this.newPhoneNumber)));
  }

  void updateAbout() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => About(this.newAbout)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.fromLTRB(25, 50, 25, 0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.indigoAccent.shade400,
                              fontWeight: FontWeight.w700),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: this.updatePhoto,
                        child: CircleAvatar(
                            radius: 55.0,
                            backgroundColor: Colors.indigoAccent.shade400,
                            child: ClipOval(
                                child: (this._image != null)
                                    ? Image.file(this._image)
                                    : Image.asset("assets/no_img.jpg")))),
                    // backgroundImage: AssetImage(this._image == null
                    //     : this._image.path),
                    // child: Ink(
                    //     decoration: const ShapeDecoration(
                    //         color: Colors.white,
                    //         shape: CircleBorder()),
                    //     child: IconButton(
                    //         onPressed: this.updatePhoto,
                    //         icon: Icon(Icons.edit),
                    //         color: Colors.blue.shade800,
                    //         padding: EdgeInsets.fromLTRB(
                    //             50, 0, 0, 50)))))),
                  ],
                ),
                Row(children: [
                  Expanded(
                      child: ListTile(
                          onTap: this.updateName,
                          title: Text("Name",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 13)),
                          subtitle: Text(this.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(Icons.navigate_next, size: 35))),
                ]),
                Divider(height: 0.5, color: Colors.black),
                Row(children: [
                  Expanded(
                      child: ListTile(
                          onTap: this.updatePhoneNumber,
                          title: Text("Phone",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 13)),
                          subtitle: Text(this.phoneNumber,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(Icons.navigate_next, size: 35)))
                ]),
                Divider(height: 0.5, color: Colors.black),
                Row(children: [
                  Expanded(
                      child: ListTile(
                          onTap: this.updateEmail,
                          title: Text("Email",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 13)),
                          subtitle: Text(this.email,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(Icons.navigate_next, size: 35))),
                ]),
                Divider(height: 0.5, color: Colors.black),
                Row(children: [
                  Expanded(
                      child: ListTile(
                          onTap: this.updateAbout,
                          title: Text("Tell us about yourself",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 13)),
                          subtitle: Text(this.about,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(Icons.navigate_next, size: 35))),
                ]),
              ],
            )));
  }
}
