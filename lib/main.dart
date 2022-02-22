import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final myStyle = TextStyle(fontSize: 20, color: Colors.black);
  final List<String> names = [
    'ali',
    'Savid',
    "sofiq",
    "Masud",
    "zahangir",
    "alim"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: names
            .map(
              (e) => Card(
                elevation: 5,
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    e,
                    style: myStyle,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
/*
Card(
            elevation: 5,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Hellfffffffffffffo',
                style: myStyle,
              ),
            ),
          ),
*/