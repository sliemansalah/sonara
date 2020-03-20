import 'package:flutter/material.dart';
import './main_drawer.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName ='/details-screen';
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: Text('Details Page',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                )),
          ),
          drawer: MainDrawer(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Hi Details"
                )
              ],
            ),
          )
        ));
  }
}