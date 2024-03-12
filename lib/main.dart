import 'package:flutter/material.dart';
import 'FirstScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Chicago Sightseeing App',
      initialRoute: '/home',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/home': (context) => const FirstScreen(),
      },
    ),
  );
}


