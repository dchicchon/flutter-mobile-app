import 'package:flutter/material.dart';
import 'package:mobile_app/About.dart';
import 'package:mobile_app/PhoneNumber.dart';
import 'Email.dart';
import 'Name.dart';
import 'Photo.dart';

// State
class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// Actual widget build
class _MyHomePageState extends State<MyHomePage> {
  String name = "";
  String email = "";
  String phoneNumber = "";
  String about = "";

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
    Navigator.push(context, MaterialPageRoute(builder: (context) => Photo()));
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
    Navigator.push(context, MaterialPageRoute(builder: (context) => About(this.newAbout)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Text(
                  "Edit Profile",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: this.updatePhoto,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/no_img.jpg'),
                          backgroundColor: Colors.blue.shade800,
                          radius: 50.0,
                        ))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: this.updateName,
                        child: Text(
                          'Name',
                        ))),
                Expanded(
                  child: Text(this.name),
                )
              ],
            ),
            Row(children: [
              Expanded(
                  child: OutlinedButton(
                      onPressed: this.updateEmail,
                      child: Text(
                        'Email',
                      ))),
              Expanded(
                child: Text(this.email),
              )
            ]),
            Row(children: [
              Expanded(
                  child: OutlinedButton(
                      onPressed: this.updatePhoneNumber,
                      child: Text(
                        'Phone Number',
                      ))),
              Expanded(
                child: Text(this.phoneNumber),
              )
            ]),
            Row(children: [
              Expanded(
                  child: OutlinedButton(
                      onPressed: this.updateAbout,
                      child: Text(
                        'Tell us about yourself',
                      ))),
              Expanded(
                child: Text(this.about),
              )
            ]),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
