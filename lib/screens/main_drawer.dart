import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(
                    top:30,
                    bottom: 10
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://simpleactivity435203168.files.wordpress.com/2019/09/flutter-1024x486.png?w=1086'),
                              fit: BoxFit.fill,
                              )
                              ),
                ),
                Text("Solayman Salah",
                style: TextStyle(
                  fontSize: 22,
                  color:Colors.white,
                ),),
                Text("slieman2001@hotmail.com",
                style: TextStyle(
                  color:Colors.white,
                ),)
              ],
            ),
          ),
        ),

          ListTile(
            leading:Icon(Icons.person),
            title: Text('Profile',
            style: TextStyle(
              fontSize: 18
            )),
            onTap: null,
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title: Text('Settings',
            style: TextStyle(
              fontSize: 18
            )),
            onTap: null,
          ),
          ListTile(
            leading:Icon(Icons.arrow_back),
            title: Text('Logout',
            style: TextStyle(
              fontSize: 18
            )),
            onTap: null,
          ),
      ],
    ));
  }
}
