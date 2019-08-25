import 'package:flutter/material.dart';

class AwesomeButton extends StatefulWidget {
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {
  //  counter
  int counter = 0;
  //  string array
  List<String> strings = ["Flutter", "Is", "Awesome"];
  // displayed string
  String displayedString = "";

  void onPressed() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 2 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Screen Widget!"),
          backgroundColor: Colors.deepOrange,
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  displayedString,
                  style: new TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(15.0)),
                new RaisedButton(
                  child: new Text("Press Me!", style: new TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0
                  )),
                  color: Colors.red,
                  onPressed: onPressed,
                ),
              ],
            ),
          ),
        ),
    );
  }
}