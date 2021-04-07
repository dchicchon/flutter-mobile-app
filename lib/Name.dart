import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  void submitName() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsetsDirectional.only(top: 50),
            child: Column(
              children: [
                Text("Whats your name?",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 25),
                    child: Row(
                      children: [
                        Expanded(child: TextInputWidget()),
                        Expanded(child: TextInputWidget())
                      ],
                    )),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 50),
                    child: OutlinedButton(
                        onPressed: this.submitName,
                        child: Text("Update", style: TextStyle(fontSize: 15)),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(75, 15, 75, 15))))
              ],
            )));
  }
}

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
      child:TextField(
      controller: nameController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Name",
          hintText: "Enter your name"),
    ));
  }
}
