import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  TextInputWidget([this.controller, this.label]);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: widget.label,
              hintText: "Enter your name"),
        ));
  }
}
