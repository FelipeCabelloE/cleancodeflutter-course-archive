import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Flutter Basics")),
        ),
        body: Container(
            height: 200,
            width: 200,
            child: Column(children: [
              Container(color: Colors.green, child: const Text("Hello World")),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)))
            ])),
      ),
    );
  }
}
