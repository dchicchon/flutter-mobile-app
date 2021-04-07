import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text("Whats your phone number?"),
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
