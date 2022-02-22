import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'My App',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var HeadText = TextStyle(fontSize: 30, color: Colors.red);
  var SubText = TextStyle(fontSize: 15, color: Colors.white);
  String name = '';
  String address = '';
  String phone = '';
  String age = '';
  String father = '';
  String mother = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.black38,
      body: Center(
        child: Container(
          width: 310,
          height: double.infinity,
          color: Colors.white,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'MINI BILL FORM',
                  style: HeadText,
                ),
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Name : $name',
                        style: SubText,
                      ),
                      Text(
                        'Enter Age : $age',
                        style: SubText,
                      ),
                      Text(
                        'Father Name : $father',
                        style: SubText,
                      ),
                      Text(
                        'Mother Name : $mother',
                        style: SubText,
                      ),
                      Text(
                        'Local Address : $address',
                        style: SubText,
                      ),
                      Text(
                        'Personal Phone No : $phone',
                        style: SubText,
                      ),
                    ],
                  ),
                ),
                /////////  ////////////
                TextFormField(
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '',
                    labelText: 'Name',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                ),
                ///////// Name ////////////
                TextFormField(
                  onChanged: (value) {
                    age = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '',
                    labelText: 'Enter Age',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                ///////// Fathter ////////////
                TextFormField(
                  onChanged: (value) {
                    father = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '',
                    labelText: 'Enter Father Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                ///////// Mother ////////////
                TextFormField(
                  onChanged: (value) {
                    mother = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '',
                    labelText: 'Enter Mother Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                ///////// Address ////////////
                TextFormField(
                  onChanged: (value) {
                    address = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '',
                    labelText: 'Enger Short Address',
                    prefixIcon: Icon(
                      Icons.map,
                    ),
                  ),
                ),
                ///////// Phone No ////////////
                TextFormField(
                  onChanged: (value) {
                    phone = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '',
                    labelText: 'Enter Phone No',
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
                /////////  ////////////
              ],
            ),
          ),
        ),
      ),
    );
  }
}
