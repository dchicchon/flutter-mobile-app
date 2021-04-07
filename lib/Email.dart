import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text("Whats your name?"),
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