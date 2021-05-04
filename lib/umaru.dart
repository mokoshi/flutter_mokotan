import 'package:flutter/material.dart';

class UmaruPage extends StatefulWidget {
  UmaruPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UmaruPageState createState() => _UmaruPageState();
}

class _UmaruPageState extends State<UmaruPage> {
  @override
  Widget build(BuildContext context) {
    var index = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(children: <Widget>[
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("もどる")),
          Hero(tag: 'tag$index', child: Image.network('https://picsum.photos/id/$index/200/300'))
        ])));
  }
}
