import 'package:flutter/material.dart';
import 'package:nubank_app_clone/modules/random_words/pages/favorites_page.dart';
import 'package:nubank_app_clone/modules/random_words/pages/home_page.dart';

class SideBarNavegationState extends StatefulWidget {
  @override
  State<SideBarNavegationState> createState() => _SideBarNavegationState();
}

class _SideBarNavegationState extends State<SideBarNavegationState> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = HomePage();
      case 1:
        page = FavoritesPage();
      default:
        throw UnimplementedError("Não foi");
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
                child: NavigationRail(
              extended: constraints.maxWidth >= 600,
              destinations: [
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text('Home')),
                NavigationRailDestination(
                    icon: Icon(Icons.favorite), label: Text('Favorite'))
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            )),
            Expanded(
                child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: page,
            ))
          ],
        ),
      );
    });
  }
}
