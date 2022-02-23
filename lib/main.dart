import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MyApp',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "Good Morning";
  @override
  Widget build(BuildContext context) {
    print("This is Future Now");
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        title = "Good Evening";
      });
      print("This is Future");
    });
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('$title'),
        ),
      ),
    );
  }
}
