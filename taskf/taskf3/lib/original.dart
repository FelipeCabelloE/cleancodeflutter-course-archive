import 'package:flutter/foundation.dart';
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
          title: const Center(child: Text("Task f3")),
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Hello"),
          Text(RelevantQuestion().askPolarbears),
          SizedBox(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundImage: NetworkImage(RelevantQuestion().internetimage),
              ))
        ])),
      ),
    );
  }
}

@Category(<String>['Nature', 'Ice'])
class RelevantQuestion {
  final String askPolarbears = "Why are polar bears white?";
  final String internetimage =
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcff2.earth.com%2Fuploads%2F2019%2F06%2F04200842%2FSynthetic-polar-bear-hair-could-be-the-next-big-step-in-architecture-aerospace.jpg&f=1&nofb=1&ipt=0b8c3d366bf525766fa20fb33a4c1226f6f08a23ceb02adfb4d155fb054afcea&ipo=images';
}
