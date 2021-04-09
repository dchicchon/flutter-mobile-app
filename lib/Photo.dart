import 'package:flutter/material.dart';
import 'dart:io'; // used for File?

class Photo extends StatefulWidget {
  final Function() callback;
  final File image;

  Photo([this.callback, this.image]);

  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  // callback to parent widget
  void callPhotoCallback() {
    widget.callback();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsetsDirectional.only(top: 50),
            child: Column(
              children: [
                Text("Upload a photo?",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),

                // Currently this container is helping with centering the page
                Container(
                  margin: EdgeInsetsDirectional.only(top: 25),
                  // child: Row(
                  //   children: [],
                  // )
                ),

                // Show Current Avatar

                CircleAvatar(
                  radius: 55,
                  child: ClipOval(
                      child: widget.image != null
                          ? Image.file(widget.image)
                          : Image.asset("assets/no_img.jpg")),
                ),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 50),
                    child: ElevatedButton(
                        onPressed: this.callPhotoCallback,
                        child: Text("Update", style: TextStyle(fontSize: 15)),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            onPrimary: Colors.white,
                            shadowColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(75, 15, 75, 15))))
              ],
            )));
  }
}
