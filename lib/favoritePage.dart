import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favorite = appState.favorites;

    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text('You have ${favorite.length} favorites',
            style: Theme.of(context).textTheme.titleMedium),
      ),
      favorite.isEmpty
          ? Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('No favorites yet'),
            )
          : Column(
              children: favorite.map((pair) {
                return ListTile(
                  title: Text(pair.asLowerCase),
                  leading: IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {
                      appState.toggleFavorite(pair);
                    },
                  ),
                );
              }).toList(),
            ),
    ]);
  }
}
