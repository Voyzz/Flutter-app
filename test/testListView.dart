import 'package:flutter/material.dart';

void main() => runApp(
    MyApp(items: new List<String>.generate(20, (i) => "这是第 ${i + 1} 个元素")));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Voyz Flutter Demo",
      home: Scaffold(
          appBar: new AppBar(
            title: new Text('Voyz Flutter Demo'),
          ),
          body: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new Container(
                  child: new Text(
                    '${items[index]}',
                    style: TextStyle(fontSize: 18.0, color: Colors.yellow[100]),
                  ),
                  alignment: Alignment.center,
                  width: 100.0,
                  height: 80.0,
                  color: Colors.red[300],
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                );
              })),
    );
  }
}

class MyListContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text(
          '这是第一个',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.red,
          ),
        ),
        Text(
          '这是第二个',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.green,
          ),
        ),
        Text(
          '这是第三个',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.lightBlue,
          ),
        ),
      ],
    );
  }
}
