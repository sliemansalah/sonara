import 'package:flutter/material.dart';

import './screens/main_drawer.dart';

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
          ),
          drawer: MainDrawer()
        ));
  }
}
