import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import './main_drawer.dart';

class WhoAreWe extends StatelessWidget {
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
              title: Text('من نحن',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )),
            ),
              drawer: MainDrawer(),
               body: Center(child: 
               Text('هذه صفحة من نحن',style: TextStyle(fontSize: 32),)),));     
   }
}

