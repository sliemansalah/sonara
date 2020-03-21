import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:async';

class GetJson extends StatefulWidget {
  @override
  _GetJsontate createState() => _GetJsontate();
}

class _GetJsontate extends State<GetJson> {
  List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});
    this.setState(() {
      data = json.decode(response.body);
    });
    print(data[1]["title"]);
    return "Success!";
  }
  
  void initState() {
    this.getData();
  }

  Widget build(BuildContext context) {
    return new ListView.builder(
        shrinkWrap: true,
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new Text(data[index]["title"]),
          );
        });
  }
}
