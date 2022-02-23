import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myStyle = TextStyle(fontSize: 20, color: Colors.black);

  final List<String> names = [
    'ali',
    'Savid',
    "sofiq",
    "Masud",
    "zahangir",
    "alim"
  ];

  TextEditingController inputC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
            //  crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: inputC,
                onEditingComplete: () {
                  print(inputC.text);
                  setState(() {
                    names.add(inputC.text);
                  });
                },
              ),
              ...List.generate(
                names.length,
                (index) => Dismissible(
                  key: UniqueKey(),
                  onDismissed: (v) {
                    names.remove(index);
                    // ScaffoldMessenger.of(context)
                    //     .showSnackBar(SnackBar(content: Text('Delated')));
                  },
                  child: Card(
                    elevation: 5,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        names[index],
                        style: myStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
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
