import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  void submitPhoto() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsetsDirectional.only(top: 50),
          child: Column(children: [
            Row(children: [
              Text("Upload a photo?",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w700)),
            ]),
            Container(
                margin: EdgeInsetsDirectional.only(top: 50),
                child: ElevatedButton(
                    onPressed: this.submitPhoto,
                    child: Text("Update", style: TextStyle(fontSize: 15)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        elevation: 10,
                        shadowColor: Colors.black,
                        padding: EdgeInsets.fromLTRB(75, 15, 75, 15))))
          ]),
        ));
  }
}
