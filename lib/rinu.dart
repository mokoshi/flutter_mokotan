import 'package:flutter/material.dart';

class RinuPage extends StatefulWidget {
  RinuPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RinuPage> {
  int _items = 0;
  final items = List<String>.generate(100, (i) => "Item $i");

  _increment() {
    setState(() {
      _items += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Column(children: [
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/umaru');
          },
          child: Text("button")),
      Flexible(
          child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Hero(
                tag: 'tag$index',
                child:
                    Image.network('https://picsum.photos/id/$index/200/300')),
            title: Text('${items[index]}'),
            onTap: () {
              Navigator.of(context).pushNamed('/umaru', arguments: index);
            },
          );
        },
      ))
    ]);
  }
}
