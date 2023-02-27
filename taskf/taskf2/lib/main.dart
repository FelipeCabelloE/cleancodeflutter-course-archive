import 'package:flutter/material.dart';

class RelevantQuestion {
  String askPolarbears = "Why are polar bears white?";
  String category = 'Nature';
}

void main() {
  String question = RelevantQuestion().askPolarbears;
  String category = RelevantQuestion().category;

  runApp(MyApp(
    question: question,
    category: category,
  ));
}

class MyApp extends StatelessWidget {
  final String question;
  final String category;
  const MyApp({super.key, required this.question, required this.category});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Flutter Basics")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Category: $category"), const Text('- - -'), Text('Question: $question')],
          ),
        ),
      ),
    );
  }
}
