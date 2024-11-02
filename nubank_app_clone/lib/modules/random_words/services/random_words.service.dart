import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWordsService extends ChangeNotifier {
  var current = WordPair.random();
  final favorites = <WordPair>[];
  final words = <WordPair>[];

  void getNext() {
    current = WordPair.random();
    words.add(current);
    notifyListeners();
  }

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }

  bool containsWordPaid() {
    return favorites.contains(current);
  }
}
