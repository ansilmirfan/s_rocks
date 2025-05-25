import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  final String text;
  const ViewPage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.primary),
      body: Center(
        child: Text(text, style: Theme.of(context).textTheme.headlineLarge),
      ),
    );
  }
}
