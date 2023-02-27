import 'package:flutter/material.dart';

Map<int, Map<String, String>> categoriesList = {
  0: {
    'Name': 'Nature',
    'Link':
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcff2.earth.com%2Fuploads%2F2019%2F06%2F04200842%2FSynthetic-polar-bear-hair-could-be-the-next-big-step-in-architecture-aerospace.jpg&f=1&nofb=1&ipt=0b8c3d366bf525766fa20fb33a4c1226f6f08a23ceb02adfb4d155fb054afcea&ipo=images'
  },
  1: {
    'Name': 'Physics',
    'Link':
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ffthmb.tqn.com%2F4ELUdCx2UBbyMqaeajq7RFi67ps%3D%2F3745x2446%2Ffilters%3Afill(auto%2C1)%2FGettyImages-82126349-57cb16f55f9b5829f4138e65.jpg&f=1&nofb=1&ipt=a629b31af9549bd00324a3b880713986e5bc00bb6734ac82b0bf9f0eb7146ac2&ipo=images'
  },
  2: {'Name': 'Random', 'Link': 'https://youtogift.com/img/random-04.c84566b1.png'}
};

class RelevantQuestions {
  final String question;
  final Map<String, String>? category;
  RelevantQuestions({required this.question, required this.category});
}

List<RelevantQuestions> questions = [
  RelevantQuestions(
    question: 'Why are polar bears white?',
    category: categoriesList[0],
  ),
  RelevantQuestions(
    question: 'Why are bears brown?',
    category: categoriesList[0],
  ),
  RelevantQuestions(
    question: 'What is earth\'s rotational speed?',
    category: categoriesList[1],
  ),
  RelevantQuestions(
    question: 'Why is the sky blue?',
    category: categoriesList[1],
  ),
  RelevantQuestions(
    question: 'How deep is the ocean?',
    category: categoriesList[0],
  ),
  RelevantQuestions(
    question: 'What is the speed of light?',
    category: categoriesList[1],
  ),
  RelevantQuestions(
    question: 'How tall is the tallest mountain?',
    category: categoriesList[0],
  ),
  RelevantQuestions(
    question: 'What is the chemical composition of water?',
    category: categoriesList[1],
  ),
  RelevantQuestions(
    question: 'Who am i?',
    category: categoriesList[2],
  ),
  RelevantQuestions(
    question: 'Who are you?',
    category: categoriesList[2],
  ),
];

void main() {
  runApp(MyApp(
    listQuestionInstances: questions,
  ));
}

class MyApp extends StatelessWidget {
  final List<RelevantQuestions> listQuestionInstances;
  const MyApp({super.key, required this.listQuestionInstances});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Task f5")),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constrains) {
            if (constrains.maxWidth > 600) {
              return HorizontalListView(listQuestionInstances: listQuestionInstances);
            } else {
              return VerticalListView(listQuestionInstances: listQuestionInstances);
            }
          },
        ),
      ),
    );
  }
}

class VerticalListView extends StatelessWidget {
  const VerticalListView({
    super.key,
    required this.listQuestionInstances,
  });

  final List<RelevantQuestions> listQuestionInstances;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => QuestionCard(
            question: listQuestionInstances[index].question,
            category: listQuestionInstances[index].category?['Name'],
            networkImage: listQuestionInstances[index].category?['Link']));
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    required this.listQuestionInstances,
  });

  final List<RelevantQuestions> listQuestionInstances;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => SizedBox(
              width: 200,
              child: QuestionCard(
                  question: listQuestionInstances[index].question,
                  category: listQuestionInstances[index].category?['Name'],
                  networkImage: listQuestionInstances[index].category?['Link']),
            ));
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
