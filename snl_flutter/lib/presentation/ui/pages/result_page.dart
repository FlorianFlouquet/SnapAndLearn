import 'package:flutter/material.dart';
import 'package:snl_flutter/data/service/photo_service.dart';
import 'package:snl_flutter/presentation/ui/components/word_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mockData = PhotoService().allData;

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
                  .map<Widget>(
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
