import 'package:flutter/material.dart';
import 'widgets/question_widget.dart';
import 'dart:math';

class WidgetExampleScreen extends StatefulWidget {
  const WidgetExampleScreen({super.key});

  @override
  State<WidgetExampleScreen> createState() => _WidgetExampleScreenState();
}

class _WidgetExampleScreenState extends State<WidgetExampleScreen> {
  List questions = <String>['Whats your name?', 'What do you do?', 'why are trees green?'];

  String pickRandomItem(List<String> list) {
    Random randomplaceholder = Random();
    return list[randomplaceholder.nextInt(list.length)];
  }

  void addItemToList(List<String> list) {
    setState(() {
      questions.add(pickRandomItem(list));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(children: [
            CircleAvatar(
              backgroundImage: NetworkImage(RelevantQuestion().internetimage),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("Quiz poker")
          ]),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 50,
                        margin: const EdgeInsets.all(2),
                        color: const Color.fromARGB(255, 31, 125, 153),
                        child: Center(
                            child: Text(
                          '${questions[index]}',
                          style: const TextStyle(fontSize: 18),
                        )));}))],
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            addItemToList(RelevantQuestion().askPolarbears);
          },
          child: const Text("Add Question")),
    );}}