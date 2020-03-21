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
               body: Center(child: 
               Text('هذه الصفحة الرئيسية',style: TextStyle(fontSize: 32),)),));    
   }
}

