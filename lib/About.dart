import 'package:flutter/material.dart';
import 'TextInputWidget.dart';

class About extends StatefulWidget {
  final Function(String) callback;
  About(this.callback);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  final aboutController = TextEditingController();

  void submitAbout() {
    widget.callback(aboutController.text);
    aboutController.clear();
    Navigator.pop(context);
  }

  @override
  void dispose() {
    super.dispose();
    aboutController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsetsDirectional.only(top: 50),
            child: Column(
              children: [
                Text("What type of passenger are you?",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 25),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextInputWidget(this.aboutController,
                                "Write a little something about yourself. Do you like chatting? Are you a smoker? Do you bring pets with you? Etc.  ")),
                      ],
                    )),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 50),
                    child: ElevatedButton(
                        onPressed: this.submitAbout,
                        child: Text("Update", style: TextStyle(fontSize: 15)),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(75, 15, 75, 15))))
              ],
            )));
  }
}
