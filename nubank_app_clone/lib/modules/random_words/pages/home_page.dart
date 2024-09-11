import 'package:flutter/material.dart';
import 'package:nubank_app_clone/modules/random_words/components/word_card.dart';
import 'package:nubank_app_clone/modules/random_words/services/random_words.service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<RandomWordsService>();
    var pair = appState.current;

    IconData icon;
    if (appState.containsWordPaid()) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WordCard(pair: pair),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(
                    onPressed: () => appState.toggleFavorite(),
                    icon: Icon(icon),
                    label: Text('Like')),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      appState.getNext();
                    },
                    child: Text('Next')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
