import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import './main_drawer.dart';

class HomeScreen extends StatelessWidget {
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
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('الرئيسية'),
                  backgroundColor: Colors.blue
                  ),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.near_me),
                  title: Text('محليات'),
                  backgroundColor: Colors.blue
                  ),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.no_sim),
                  title: Text('عالميات'),
                  backgroundColor: Colors.blue
                  ),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.center_focus_strong),
                  title: Text('رياضة'),
                  backgroundColor: Colors.blue
                  ),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.panorama_fish_eye),
                  title: Text('فوت شوف'),
                  backgroundColor: Colors.blue
                  )
              ],),
              
               body: Center(child: 
               Text('هذه الصفحة الرئيسية',style: TextStyle(fontSize: 32),)),));    
   }
}

