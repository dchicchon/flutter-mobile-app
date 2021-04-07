import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(children: [Text("Whats your name?")]),
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
