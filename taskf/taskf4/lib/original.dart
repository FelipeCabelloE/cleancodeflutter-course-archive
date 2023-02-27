import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            ]),),),
        body: SingleChildScrollView(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              for (String item in RelevantQuestion().askPolarbears)
                Column(
                  children: [
                    const SizedBox(height: 15),
                    Container(
                        height: 50,
                        width: 200,
                        color: Colors.amberAccent,
                        alignment: Alignment.center,
                        child: Text(item))],),]),),),),);}}
@Category(<String>['Nature', 'Ice'])
class RelevantQuestion {
  final List<String> askPolarbears = [
    "Why are polar bears white?",
    "Why are polar bears white?",
    "Why are polar bears white?",
    "Why are polar bears white?",
    "Why are polar bears white?",
    "Why are polar bears white?",
    "Why are polar bears white?",
    "Why are polar bears white?",
    "Why are polar bears white?",
    "Why are polar bears white?"
  ];
  final String internetimage =
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcff2.earth.com%2Fuploads%2F2019%2F06%2F04200842%2FSynthetic-polar-bear-hair-could-be-the-next-big-step-in-architecture-aerospace.jpg&f=1&nofb=1&ipt=0b8c3d366bf525766fa20fb33a4c1226f6f08a23ceb02adfb4d155fb054afcea&ipo=images';
}