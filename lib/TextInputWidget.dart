import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: TextField(
          controller: nameController,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Name",
              hintText: "Enter your name"),
        ));
  }
}
