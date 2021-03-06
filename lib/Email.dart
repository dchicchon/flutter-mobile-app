import 'package:flutter/material.dart';
import 'TextInputWidget.dart';

class Email extends StatefulWidget {
  final Function(String) callback;
  Email(this.callback);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final emailController = TextEditingController();

  void submitEmail() {
    widget.callback(emailController.text);
    emailController.clear();
    Navigator.pop(context);
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
            margin: EdgeInsetsDirectional.only(top: 50),
            child: Column(
              children: [
                Text("Whats your email?",
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
                                TextInputWidget(this.emailController, "Email")),
                      ],
                    )),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 50),
                    child: ElevatedButton(
                        onPressed: this.submitEmail,
                        child: Text("Update", style: TextStyle(fontSize: 15)),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            onPrimary: Colors.white,
                            shadowColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(75, 15, 75, 15))))
              ],
            )));
  }
}
