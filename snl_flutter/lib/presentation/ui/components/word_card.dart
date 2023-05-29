import 'package:flutter/material.dart';
import 'package:snl_flutter/presentation/models/word_model.dart';

class WordCard extends StatelessWidget {
  const WordCard({super.key, required this.word});

  final WordModel word;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((p0, p1) {
        return Container(
          margin: const EdgeInsets.only(top: 10.0),
          height: 80.0,
          width: p1.maxWidth * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(2, 2),
                )
              ]),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 16.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    word.type == 'kana' ? 'あ' : '漢',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 45.0,
                    alignment: Alignment.center,
                    child: Text(
                      word.word,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Container(
                    height: 35.0,
                    width: 220.0,
                    child: Text(
                      arrayToString(word.translations),
                      style: Theme.of(context).textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}

String arrayToString(List<String> array) {
  String result = "";
  for (var i = 0; i < array.length; i++) {
    result += array[i];
    if (i < array.length - 1) {
      result += ", ";
    }
  }
  return result;
}
