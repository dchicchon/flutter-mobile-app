import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text("Upload a photo?"),
            Row(
              children: [
                // TextInputWidget(),
                // TextInputWidget(),
              ],
            )
          ],
        ));
  }
}
