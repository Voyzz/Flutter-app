import 'package:flutter/material.dart';

void main() => {
      runApp(MyApp(
          items: new List<Widget>.generate(120, (i) {
        return new Container(
          child: new Text(
            '第${(i ~/ 4 + 1)}行\n第${i % 4 + 1}个元素',
            style: TextStyle(fontSize: 15.0),
          ),
          color: Colors.red[200],
          alignment: Alignment.center,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
        );
      })))
    };

class MyApp extends StatelessWidget {
  final List<Widget> items;
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      home: Scaffold(
        appBar: new AppBar(title: new Text('GirdView')),
        body: GridView.count(
            padding: const EdgeInsets.all(20.0),
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            children: items),
      ),
    );
  }
}
