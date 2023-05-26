import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:snl_flutter/presentation/models/word_model.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mockData = [
      WordModel('私', ["trans1", "trans2"], 'kanji'),
      WordModel('わたし', ["trans1"], 'kana'),
    ];

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColorDark,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(40),
              alignment: Alignment.center,
              child: Text(
                'YOUR DECK',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              child: Column(
                children: mockData
                    .map(
                      (e) => Text(e.word),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
