import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
/*
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic _data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(
      Uri.parse("https://apis-1203c-default-rtdb.firebaseio.com/users.json"),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      setState(() {
        _data = data;
      });
    } else {
      print('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _data != null
            ? Text(_data.toString())
            : CircularProgressIndicator(),
      ),
    );
  }
}
*/