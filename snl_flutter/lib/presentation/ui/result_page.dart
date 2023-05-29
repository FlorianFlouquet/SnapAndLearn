import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:snl_flutter/presentation/models/word_model.dart';
import 'package:snl_flutter/presentation/ui/components/word_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mockData = [
      WordModel(
          '私',
          [
            "trans1",
            "trans2",
            "jjgdjlgdjfdjllgl",
            "jgfjgdjgdjfogido",
            "jddflgjldjgldjg"
          ],
          'kanji'),
      WordModel('わたし', ["trans1"], 'kana'),
    ];

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(40),
              color: Theme.of(context).primaryColorDark,
              child: Text(
                'YOUR DECK',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Column(
              children: mockData
                  .map(
                    (e) => WordCard(word: e),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
