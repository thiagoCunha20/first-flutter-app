import 'package:flutter/material.dart';
import 'package:nubank_app_clone/modules/random_words/services/random_words.service.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<RandomWordsService>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('Is empty'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have ${appState.favorites.length} favorites:'),
        ),
        for (var favorite in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(favorite.asLowerCase),
          )
      ],
    );
  }
}
