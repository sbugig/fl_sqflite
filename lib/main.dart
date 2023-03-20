import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
      ),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? name;
  String? description;
  double? price;

  void getName(String name) {
    this.name = name;
  }

  void getPrice(double price) {
    this.price = price;
  }

  void getDescription(String description) {
    this.description = description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Frud'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            decoration: const InputDecoration(hintText: 'Name'),
            onChanged: (name) => getName(name),
          ),
          TextField(
            decoration: const InputDecoration(hintText: 'Description'),
            onChanged: (description) => getDescription(description),
          ),
          TextField(
            decoration: const InputDecoration(hintText: 'Price'),
            onChanged: (price) => getPrice(double.parse(price)),
          )
        ]),
      ),
    );
  }
}
