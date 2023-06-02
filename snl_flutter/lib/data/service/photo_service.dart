import 'package:snl_flutter/presentation/models/word_model.dart';

class PhotoService {
  final data = [
    WordModel('私', ["I", "me"], 'kanji'),
    WordModel('葬儀', ["funeral", "funeral service"], 'kanji'),
    WordModel('こども', ["child", "children"], 'kana'),
    WordModel('すっかり',
        ["all", "completely", "entirely", "thoroughly", "totally"], 'kana'),
    WordModel('改善', ["betterment", "improvement", "Kaizen"], 'kanji'),
    WordModel('悲痛', ["grief", "sorrow", "heartbreak"], 'kanji'),
    WordModel('がっかりする', ["to be disappointed", "to be dejected"], 'kana'),
  ];

  get allData {
    return data;
  }
}
