import 'package:flutter/material.dart';
import 'TextInputWidget.dart';

class Name extends StatefulWidget {
  final Function(String, String) callback;
  Name(this.callback);

  @override
  _NameState createState() => _NameState();
}

class _NameState extends State<Name> {
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();

  void submitName() {
    widget.callback(fNameController.text, lNameController.text);
    fNameController.clear();
    lNameController.clear();
    Navigator.pop(context);
  }

  @override
  void dispose() {
    super.dispose();
    fNameController.dispose();
    lNameController.dispose();
  }

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
                        Expanded(
                            child:
                                TextInputWidget(this.fNameController, "First")),
                        Expanded(
                            child:
                                TextInputWidget(this.lNameController, "Last"))
                      ],
                    )),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 50),
                    child: ElevatedButton(
                        onPressed: this.submitName,
                        child: Text("Update", style: TextStyle(fontSize: 15)),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            onPrimary: Colors.white,
                            shadowColor: Colors.black,
                            elevation: 10,
                            padding: EdgeInsets.fromLTRB(75, 15, 75, 15))))
              ],
            )));
  }
}
