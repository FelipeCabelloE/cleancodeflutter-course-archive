import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final randomplaceholder = Random();
    return Container(
      color: Colors.amber[700],
      child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
              RelevantQuestion().askPolarbears[randomplaceholder.nextInt(RelevantQuestion().askPolarbears.length)])),
    );
  }
}

@Category(<String>['Nature', 'Ice'])
class RelevantQuestion {
  final List<String> askPolarbears = [
    "Why are polar bears white?",
    "Why are polar bears blue?",
    "Why are polar bears green?",
    "Why are polar bears red?",
    "Why are polar bears yellow?",
    "Why are polar bears strange?",
    "Why are polar bears nice?",
    "Why are polar bears cute?",
    "Why are polar bears?",
    "Why!?"
  ];
  final String internetimage =
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcff2.earth.com%2Fuploads%2F2019%2F06%2F04200842%2FSynthetic-polar-bear-hair-could-be-the-next-big-step-in-architecture-aerospace.jpg&f=1&nofb=1&ipt=0b8c3d366bf525766fa20fb33a4c1226f6f08a23ceb02adfb4d155fb054afcea&ipo=images';
}
