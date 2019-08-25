import 'package:flutter/material.dart';

void page1Main() {
  runApp(
    new MaterialApp(
      title: 'page1 => basic',
      home: new MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hello Wolrd App'),
      ),
      body: new Center(
        child: new Text(
          'Hello, World!'
        ),
      ),
    );
  }
}