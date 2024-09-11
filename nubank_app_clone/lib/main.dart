import 'package:flutter/material.dart';
import 'package:nubank_app_clone/modules/random_words/components/side_bar_navegation.dart';
import 'package:nubank_app_clone/modules/random_words/services/random_words.service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomWordsService(),
      child: MaterialApp(
        title: 'Nubank',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        home: SideBarNavegationState(),
      ),
    );
  }
}
