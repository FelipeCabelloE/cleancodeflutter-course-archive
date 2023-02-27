
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
        body: const AdaptativeBody(),
        floatingActionButton: const SnackbarButton(),
      ),
    );
  }
}

class AdaptativeBody extends StatelessWidget {
  const AdaptativeBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 600;
    Axis axisOrientation = isScreenWide ? Axis.horizontal : Axis.vertical;

    return SingleChildScrollView(
      scrollDirection: axisOrientation,
      child: Center(
        child: Flex(direction: axisOrientation, mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          for (String item in RelevantQuestion().askPolarbears)
            Flex(
              direction: axisOrientation,
              children: [
                const SizedBox(
                  height: 15,
                  width: 15,
                ),
                Container(
                    height: 50,
                    width: 200,
                    color: const Color.fromARGB(255, 48, 150, 99),
                    alignment: Alignment.center,
                    child: Text(item))
              ],
            ),
        ]),
      ),
    );
  }
}