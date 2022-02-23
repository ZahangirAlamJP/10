import 'package:flutter/material.dart';

class Contacts {
  String? name;
  String? number;
  String? image;
  Contacts({required this.name, required this.number, required this.image});
}

void main() {
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

  final List<Contacts> names = [
    Contacts(name: "Alam", number: "0311", image: "dd8d"),
    Contacts(name: "Alam mistri", number: "0111", image: "d8dd"),
    Contacts(name: "Alam Hazi", number: "0121", image: "d8dd"),
  ];

  TextEditingController inputC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('My Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // TextFormField(
              //   controller: inputC,
              //   onEditingComplete: () {
              //     print(inputC.text);
              //     setState(() {
              //       names.add(inputC.text);
              //     });
              //   },
              // ),
              // Note : symbols  // BuiltContest < c // Index < i ///
              Expanded(
                child: ListView.builder(
                    itemCount: names.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (c, i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5,
                          shadowColor: Colors.grey.withOpacity(0.4),
                          //color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                              child: Row(
                                children: [
                                  CircleAvatar(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('${names[i].name}'),
                                      Text('${names[i].number}'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
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
