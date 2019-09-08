import 'package:flutter/material.dart';

class MyTextInput extends StatefulWidget {
  MyTextInputState createState() => new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('Input text'), backgroundColor: Colors.deepOrange,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: 'Type in here'
                ),
                onChanged: (String str) {
                  setState(() {
                    result = str;
                  });
                },
              ),
              new Text(result)
            ],
          ),
        ),
      ),
    );
  }
}