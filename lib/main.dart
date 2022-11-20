import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var controller = TextEditingController();

  String x = " ";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Grade Calculator")),
      body: Column(
        children: [
          TextField(controller: controller),
          ElevatedButton(
              onPressed: () {
                int y = int.parse(controller.text);
                setState(() {
                  if (y >= 90) {
                    x = "A";
                  } else if (y >= 80) {
                    x = "B";
                  } else if (y >= 70) {
                    x = "C";
                  } else if (y >= 60) {
                    x = "D";
                  } else {
                    x = "F";
                  }
                });
              },
              child: Icon(Icons.ac_unit_rounded)),
          Text(x)
        ],
      ),
    ));
    // This is the theme of your application.
    //
    // Try running your application with "flutter run". You'll see the
    // application has a blue toolbar. Then, without quitting the app, try
    // changing the primarySwatch below to Colors.green and then invoke
    // "hot reload" (press "r" in the console where you ran "flutter run",
    // or simply save your changes to "hot reload" in a Flutter IDE).c
    // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
  }
}
