import 'package:flutter/material.dart'; // allows us to use dart?

class ListTileWidget extends StatefulWidget {
  final Function() callback;

  ListTileWidget(this.callback);
  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Row(children: [
      Expanded(
          child: ListTile(
              onTap: widget.callback,
              title: Text("Name",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 13)),
              subtitle: Text(this.name,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.navigate_next, size: 35))),
    ]));
  }
}
