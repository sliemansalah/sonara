import 'package:flutter/material.dart';
import './screens/main_drawer.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import './screens/home.dart';

void main() => runApp(HomePage());

// void _healing() {
//   print('healing');
// }

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("ar"),
        ],
        locale: Locale("ar"),
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
          drawer: MainDrawer(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('الرئيسية'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.near_me),
                  title: Text('محليات'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.no_sim),
                  title: Text('عالميات'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.center_focus_strong),
                  title: Text('رياضة'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.panorama_fish_eye),
                  title: Text('فوت شوف'),
                  backgroundColor: Colors.blue)
            ],
          ),
          body: Home()
        ));
  }
}
