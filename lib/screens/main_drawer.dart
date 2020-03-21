import 'package:flutter/material.dart';
import './who_are_we.dart';
import '../main.dart';

final List<Map<String, String>> menus = [
{"id": "home", "title": "الرئيسية"},
  {"id": "news", "title": "أخبار"},
  {"id": "localNews", "title": "محلي"},
  {"id": "internationalNews", "title": "عالمي"},
  {"id": "psNews", "title": "فلسطين"},
  {"id": "articalsNews", "title": "مقالات ومقابلات"},
  {"id": "sportNews", "title": "رياضة"},
  {"id": "sportLocalNews", "title": "رياضة محلية"},
  {"id": "SendNews", "title": "أرسل خبر"},
  {"id": "whoAreWe", "title": "من نحن"},
];

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(25),
          color: Colors.red,
          child: Text(
            'sonara.net',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        TextField(
            style: TextStyle(
              color: Colors.blueAccent,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              prefixIcon: Icon(Icons.search),
              hintText: "البحث في الموقع",
            )),
           
            ListTile(
          title: Text('الرئيسية', style: TextStyle(fontSize: 18)),
          onTap:  () {
             Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        // Divider(color: Colors.black),
        ListTile(
          title: Text('أخبار', style: TextStyle(fontSize: 18)),
          onTap: () {
           
          }
         
        ),
        ListTile(
          title: Text('محلي', style: TextStyle(fontSize: 18)),
          onTap: null,
        ),

        ListTile(
          title: Text('عالمي', style: TextStyle(fontSize: 18)),
          onTap: null,
        ),

        ListTile(
          title: Text('فلسطين', style: TextStyle(fontSize: 18)),
          onTap: null,
        ),

        ListTile(
          title: Text('مقالات ومقابلات', style: TextStyle(fontSize: 18)),
          onTap: null,
        ),

        ListTile(
          title: Text('رياضة', style: TextStyle(fontSize: 18)),
          onTap: null,
        ),

        ListTile(
          title: Text('رياضة محلية', style: TextStyle(fontSize: 18)),
          onTap: null,
        ),

        ListTile(
          title: Text('أرسل خبر', style: TextStyle(fontSize: 18)),
          onTap: null,
        ),

        ListTile(
          title: Text('من نحن', style: TextStyle(fontSize: 18)),
          onTap: () {
             Navigator.push(
            context, MaterialPageRoute(builder: (context) => WhoAreWe()));
          }
        ),
        
      ],
    ));
  }
}
