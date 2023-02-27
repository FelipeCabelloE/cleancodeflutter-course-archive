import 'package:flutter/material.dart';

class RelevantQuestion {
  String askPolarbears = "Why are polar bears white?";
  Map<String, String> category = {
    'Nature':
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcff2.earth.com%2Fuploads%2F2019%2F06%2F04200842%2FSynthetic-polar-bear-hair-could-be-the-next-big-step-in-architecture-aerospace.jpg&f=1&nofb=1&ipt=0b8c3d366bf525766fa20fb33a4c1226f6f08a23ceb02adfb4d155fb054afcea&ipo=images'
  };
}

void main() {
  RelevantQuestion polarBearQuestion = RelevantQuestion();

  runApp(MyApp(
    questionInstance: polarBearQuestion,
  ));
}

class MyApp extends StatelessWidget {
  final RelevantQuestion questionInstance;
  const MyApp({super.key, required this.questionInstance});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Task f3")),
          ),
          body: ListView(
            children: <Widget>[
              QuestionCard(
                question: questionInstance.askPolarbears,
                category: questionInstance.category.keys.first,
                networkImage: questionInstance.category['Nature'],
              )
            ],
          )),
    );
  }
}

class QuestionCard extends StatelessWidget {
  final String question;
  final String? category;
  final String? networkImage;
  const QuestionCard({super.key, required this.question, required this.category, required this.networkImage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        // clipBehavior is necessary because, without it, the InkWell's animation
        // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)

        clipBehavior: Clip.hardEdge,
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(networkImage!),
                  ),
                  title: Text(question),
                  subtitle: Text(category!),
                ),
              ],
            )),
      ),
    );
  }
}
