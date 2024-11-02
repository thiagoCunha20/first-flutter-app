import 'package:flutter/material.dart';

class PreviousWordList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!
        .copyWith(color: theme.colorScheme.onPrimary);

    return Card(
      color: theme.colorScheme.primary,
      shadowColor: theme.shadowColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Previous word list", style: style),
      ),
    );
  }
}
