import 'package:flutter/material.dart'; // allows us to use dart?
import 'package:mobile_app/About.dart'; // About page
import 'package:image_picker/image_picker.dart'; // pick images with this
import 'dart:io'; // used for File?
import 'package:mobile_app/PhoneNumber.dart'; // PhoneNumber page
import 'Email.dart'; // email page
import 'Name.dart'; // name page
import 'Photo.dart'; // photo page

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

  // Used this code to upload images https://stackoverflow.com/questions/63114278/how-to-display-picked-image-in-a-circle-avatar-in-flutter
  // We must have the image_picker dependency to all users to pick images from gallery or camera
  // Future is an async function where we wait for promise to be fulfilled
  Future getImage() async {
    // Waiting for user to pick file and so we can return the File object
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);

    // Set state for our file path
    setState(() {
      this._image = File(pickedFile.path);
    });
    Navigator.pop(context); // so we can return to the previous screen
  }

  void submitPhoto() {
    _showPicker(context);
  }

  void _showPicker(context) {
    // This allows it to be at the bottom of the screen
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
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Photo(this.submitPhoto, this._image)));
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
                    Stack(
                      children: [
                        GestureDetector(
                            onTap: this.updatePhoto,
                            child: CircleAvatar(
                                radius: 55.0,
                                backgroundColor: Colors.indigoAccent.shade400,
                                child: CircleAvatar(
                                    radius: 50,
                                    child: ClipOval(
                                        child: (this._image != null)
                                            ? Image.file(this._image)
                                            : Image.asset(
                                                "assets/no_img.jpg"))))),
                        Positioned(
                            top: 0,
                            right: 0,   
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: IconButton(
                                  onPressed: this.updatePhoto,
                                  icon: Icon(Icons.edit),
                                  color: Colors.blue.shade800,
                                )))
                      ],
                    ),
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
