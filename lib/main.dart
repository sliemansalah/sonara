import 'package:flutter/material.dart';

void main() => runApp(MyApp());

void _healing(){
  print('healing');
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: Text('sonara.net',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                )),
            actions: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.search),
                  onPressed: () {
                    print("pressed");
                  }),
              new IconButton(
                  icon: new Icon(Icons.settings),
                  onPressed: () {
                    print("settings");
                  }),
              new IconButton(
                  icon: new Icon(Icons.healing),
                  onPressed: _healing)
            ],
          ),
        ));
  }
}
