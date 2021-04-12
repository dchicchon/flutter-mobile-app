import 'package:flutter/material.dart';

//  This widget is to allow text input for a variety of profile options.
class TextInputWidget extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final int lines;

  // Can optionally bring in controllers, labels, and lines. If possible, try to force controller and make others optional.
  TextInputWidget([this.controller, this.label, this.lines]);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: TextField(
          textInputAction: TextInputAction.done,
          maxLines: widget.lines == null ? 1 : widget.lines,
          controller: widget.controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: widget.label),
        ));
  }
}
